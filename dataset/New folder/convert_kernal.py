import tensorflow as tf

# Load the Keras model
try:
    model = tf.keras.models.load_model('model.keras')
    print("Model loaded successfully.")
    model.summary()  # This should print the model's layers and configuration
except Exception as e:
    print("Error loading model:", e)
    exit()

# Proceed with TFLite conversion if model has layers
if model.layers:
    # Define the input shape (adjust based on your model)
    input_shape = (1, 128)  # Example input shape, modify as needed

    @tf.function(input_signature=[tf.TensorSpec(shape=input_shape, dtype=tf.float32)])
    def model_concrete_function(input_tensor):
        return model(input_tensor)

    # Convert to TFLite model
    converter = tf.lite.TFLiteConverter.from_concrete_functions([model_concrete_function.get_concrete_function()])
    tflite_model = converter.convert()

    # Save the TFLite model
    with open('model.tflite', 'wb') as f:
        f.write(tflite_model)

    print("Model successfully converted to TFLite and saved as model.tflite.")
else:
    print("Model has no layers. Please ensure 'model.h5' is a valid, trained model.")
