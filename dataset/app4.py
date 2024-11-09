from flask import Flask, request, jsonify
import joblib
import pandas as pd
import json
import logging

# Set up logging
logging.basicConfig(level=logging.INFO)

# Load the trained model and symptom labels
model = joblib.load('disease_prediction_model.pkl')
with open("symptoms_list.json", "r") as f:
    symptoms_list = json.load(f)

# Create a set for faster lookup of valid symptoms
valid_symptoms_set = set(symptoms_list)

app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    """
    Predicts diseases based on the list of symptoms provided in the JSON request body.
    Returns the top predictions with confidence scores and matching symptom counts.
    """
    # Ensure the request is a JSON object
    if not request.is_json:
        logging.error("Invalid input: Request body must be JSON.")
        return jsonify({"error": "Invalid input, the request body must be in JSON format."}), 400

    # Load data from the JSON
    data = request.get_json()

    # Validate "symptoms" key and ensure it's a non-empty list of strings
    symptoms = data.get("symptoms")
    if not isinstance(symptoms, list) or not all(isinstance(symptom, str) for symptom in symptoms):
        logging.error("'symptoms' must be a non-empty list of symptom strings.")
        return jsonify({"error": "'symptoms' must be a non-empty list of symptom strings."}), 400
    symptoms = [symptom.strip() for symptom in symptoms if symptom.strip()]

    # Check for empty symptoms list after processing
    if not symptoms:
        logging.error("The 'symptoms' list cannot be empty.")
        return jsonify({"error": "The 'symptoms' list cannot be empty."}), 400

    # Validate symptoms
    invalid_symptoms = [symptom for symptom in symptoms if symptom not in valid_symptoms_set]
    if invalid_symptoms:
        logging.warning(f"Invalid symptoms detected: {', '.join(invalid_symptoms)}")
        return jsonify({"error": f"Invalid symptoms detected: {', '.join(invalid_symptoms)}"}), 400

    # Convert symptoms to binary format for the model
    input_data = pd.DataFrame([[1 if symptom in symptoms else 0 for symptom in symptoms_list]], columns=symptoms_list)

    try:
        # Get prediction probabilities
        prediction_probabilities = model.predict_proba(input_data)[0]
        sorted_disease_indices = prediction_probabilities.argsort()[::-1]

        # Generate disease predictions with threshold and limit top results
        threshold = 0.01  # Minimum score for relevance
        top_n = 5         # Limit to top N predictions
        disease_predictions = [
            {
                "disease": model.classes_[i],
                "prediction_score": prediction_probabilities[i],
                "matching_symptoms": int(prediction_probabilities[i] * len(symptoms_list))
            }
            for i in sorted_disease_indices
            if prediction_probabilities[i] > threshold
        ][:top_n]

        # Log the predictions
        logging.info("Predictions generated successfully.")

        # Return the response
        return jsonify({"predictions": disease_predictions})
    
    except Exception as e:
        logging.error(f"Error during prediction: {e}")
        return jsonify({"error": "An error occurred during prediction."}), 500

if __name__ == '__main__':
    app.run(debug=True)
