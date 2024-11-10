import 'package:get/get.dart';
import 'package:healthcareapp/core/api_client.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/models/prediction_model.dart';
import 'package:healthcareapp/services/api_services.dart';
import 'package:logger/logger.dart';

class PredictionController extends GetxController {
  var predictionResult = PredictionModel().obs;
  var isLoading = false.obs;

  Future<void> fetchPrediction(List<String> symptoms) async {
    isLoading.value = true;
    try {
      final apiClient = ApiClient(AppConstants.localbaseUrl);
      final apiService = ApiService(apiClient);

      final body = {"symptoms": symptoms};
      logger.i(body);
      final result = await apiService.postPrediction('predict', body);
      predictionResult.value = result;
    } catch (e) {
      logger.e('Error fetching prediction: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
