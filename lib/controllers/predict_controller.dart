import 'package:get/get.dart';
import 'package:healthcareapp/models/predict_model.dart';
import 'package:healthcareapp/services/api_services.dart';

class PredictionController extends GetxController {
  final ApiService _apiService;
  Rx<PredictModel> _predictionResult = PredictModel().obs;
  bool _isLoading = false;

  PredictionController(this._apiService);

  bool get isLoading => _isLoading;
  PredictModel get predictionResult => _predictionResult.value;

  Future<PredictModel> fetchPrediction(data) async {
    _isLoading = true;
    try {
      // Call postPrediction from DataService
      final body = {"symptoms": data};
      final result = await _apiService.postPrediction('predict', body);
      _predictionResult.value = result;
    } catch (e) {
      print('Error fetching prediction: $e');
    } finally {
      _isLoading = false;
    }

    return _predictionResult.value;
  }
}
