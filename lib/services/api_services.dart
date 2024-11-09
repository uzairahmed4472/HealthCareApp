import 'package:healthcareapp/core/api_client.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/models/data_models.dart';

import 'dart:convert';

import 'package:healthcareapp/models/predict_model.dart';

class ApiService {
  final ApiClient apiClient;

  ApiService(this.apiClient);

  Future<List<DataModel>> fetchData() async {
    final response = await apiClient.get(AppConstants.dataEndpoint);

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => DataModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<PredictModel> postPrediction(
      String endpoint, Map<String, dynamic> data) async {
    final response = await apiClient.post(endpoint, body: data);

    // Check for success response and parse JSON
    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseData = jsonDecode(response.body);
      return PredictModel.fromJson(responseData);
    } else {
      // Handle errors
      throw Exception('Failed to post data: ${response.statusCode}');
    }
  }
}
