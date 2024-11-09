from flask import Flask, request, jsonify
import joblib
import pandas as pd
import json

# Load the trained model and symptom labels
model = joblib.load('disease_prediction_model.pkl')
with open("symptoms_list.json", "r") as f:
    symptoms_list = json.load(f)

app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    # Ensure the request is a JSON object
    if not request.is_json:
        return jsonify({"error": "Invalid input, the request body must be in JSON format."}), 400
    
    # Load the data from the JSON
    data = request.get_json()

    # Check if "symptoms" key is present and is a list
    if "symptoms" not in data:
        return jsonify({"error": "Missing 'symptoms' key in the request."}), 400
    if not isinstance(data["symptoms"], list):
        return jsonify({"error": "'symptoms' must be a list of symptom strings."}), 400

    symptoms = data["symptoms"]
    
    # Check if the symptoms list is empty
    if len(symptoms) == 0:
        return jsonify({"error": "The 'symptoms' list cannot be empty."}), 400

    # Ensure all symptoms are strings and strip any extra spaces
    symptoms = [symptom.strip() for symptom in symptoms if isinstance(symptom, str)]
    
    # Check if symptoms are valid (i.e., they exist in the symptom list)
    invalid_symptoms = [symptom for symptom in symptoms if symptom not in symptoms_list]
    if invalid_symptoms:
        return jsonify({"error": f"Invalid symptoms detected: {', '.join(invalid_symptoms)}"}), 400
    
    # Convert symptoms into binary format (0 or 1) for the model
    input_data = pd.DataFrame([[1 if symptom in symptoms else 0 for symptom in symptoms_list]], columns=symptoms_list)
    
    # Make a prediction
    try:
        # Get model prediction probabilities for each class
        prediction_probabilities = model.predict_proba(input_data)[0]
        
        # Find the disease with the highest probability and get the sorted probabilities for all diseases
        sorted_disease_indices = prediction_probabilities.argsort()[::-1]
        disease_predictions = [(model.classes_[i], prediction_probabilities[i]) for i in sorted_disease_indices]
        
        # Calculate the number of symptoms matching for more transparency
        matching_symptoms_count = {
            disease: int(prediction_score * len(symptoms_list))
            for disease, prediction_score in disease_predictions
        }
        
        # Return the list of possible diseases with match scores
        return jsonify({
            "predictions": [
                {
                    "disease": disease,
                    "prediction_score": prediction_score,
                    "matching_symptoms": matching_symptoms_count[disease]
                }
                for disease, prediction_score in disease_predictions
            ]
        })
    
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
