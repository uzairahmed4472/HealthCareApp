import pandas as pd
import numpy as np
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import OneHotEncoder
from sklearn.impute import SimpleImputer

# Load the dataset
disease_dataset = pd.read_csv('disease_dataset.csv')
disease_dataset.fillna('None', inplace=True)

# Separate features and target
X = disease_dataset.iloc[:, 1:]  # Assuming symptoms start from column 1
y = disease_dataset['Disease']

# Preprocess the data (OneHotEncode symptoms)
imputer = SimpleImputer(strategy='constant', fill_value='None')
X_imputed = imputer.fit_transform(X)

encoder = OneHotEncoder(handle_unknown='ignore')
X_encoded = encoder.fit_transform(X_imputed).toarray()

# Convert target to categorical format (assuming target is categorical)
y_encoded = pd.get_dummies(y).values

# Split the data
X_train, X_test, y_train, y_test = train_test_split(X_encoded, y_encoded, test_size=0.2, random_state=42)

# Define a simple neural network in Keras
model = tf.keras.Sequential([
    tf.keras.layers.Dense(128, activation='relu', input_shape=(X_encoded.shape[1],)),
    tf.keras.layers.Dropout(0.3),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(y_encoded.shape[1], activation='softmax')  # Output layer for multi-class classification
])

# Compile the model
model.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])

# Train the model
model.fit(X_train, y_train, epochs=50, batch_size=32, validation_split=0.2)

# Evaluate the model
loss, accuracy = model.evaluate(X_test, y_test)
print(f"Model Accuracy: {accuracy * 100:.2f}%")

# Save the model in Keras format
model.save("disease_model.h5")

# Convert the Keras model to TensorFlow Lite format
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()

# Save the .tflite model to disk
with open("disease_model.tflite", "wb") as f:
    f.write(tflite_model)

print("Model successfully converted to TensorFlow Lite format and saved as 'disease_model.tflite'")
