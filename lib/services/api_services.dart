import 'dart:convert';
import 'package:healthcareapp/core/api_client.dart';
import 'package:healthcareapp/core/app_constant.dart';

import 'package:healthcareapp/models/prediction_model.dart';

class ApiService {
  final ApiClient apiClient;

  ApiService(this.apiClient);

  Future<PredictionModel> postPrediction(
      String endpoint, Map<String, dynamic> data) async {
    final response = await apiClient.post(endpoint, body: data);
    print(response.statusCode);
    final responseData = jsonDecode(response.body);
    return PredictionModel.fromJson(responseData);
  }
}
