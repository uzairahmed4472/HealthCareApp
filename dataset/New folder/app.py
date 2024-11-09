import pandas as pd
from flask import Flask, request, jsonify
import joblib

# Load the trained model
model_pipeline = joblib.load('disease_prediction_model.pkl')

# Assuming your model uses real symptom names instead of generic 'Symptom_1', 'Symptom_2', ...
symptom_features = [
    'Allergy', 'shivering', 'chills', 'watering_from_eyes', 'continuous_sneezing', 
    'headache', 'fever', 'fatigue', 'cough', 'muscle_ache', 'sore_throat', 'runny_nose', 
    'nausea', 'vomiting', 'diarrhea', 'loss_of_appetite', 'dizziness'
]

app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    data = request.json
    if not data:
        return jsonify({'error': 'No input data provided'}), 400

    # Initialize DataFrame with all expected features set to 0
    input_data = pd.DataFrame([[0] * len(symptom_features)], columns=symptom_features)

    # Populate DataFrame based on input symptoms
    for symptom in data.get('symptoms', []):
        if symptom in input_data.columns:
            input_data.at[0, symptom] = 1
        else:
            return jsonify({'error': f'Unknown symptom: {symptom}'}), 400

    # Perform prediction
    try:
        prediction = model_pipeline.predict(input_data)
        return jsonify({'prediction': prediction[0]})
    except Exception as e:
        print("Prediction error with input data:", input_data)
        print("Error details:", str(e))
        return jsonify({'error': f'Prediction error: {str(e)}'}), 500

if __name__ == '__main__':
    app.run(debug=True)
