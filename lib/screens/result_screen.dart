import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcareapp/controllers/prediction_controller.dart';
import 'package:healthcareapp/models/prediction_model.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final predictionController = Get.put(PredictionController());
    final symptomListParams = Get.parameters["symptomsList"];
    final List<String> symptomList = jsonDecode(symptomListParams!);
    return Scaffold(
      appBar: AppBar(
        title: Text('Figure out what condition you most likely have'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Results:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Possible Conditions:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  FutureBuilder(
                    future: predictionController.fetchPrediction(symptomList),
                    builder: (context, snapshot) {
                      return Obx(() {
                        if (predictionController.isLoading.value) {
                          return Center(child: CircularProgressIndicator());
                        } else if (predictionController
                                .predictionResult.value.predictions ==
                            null) {
                          return Center(child: Text('No conditions found.'));
                        } else {
                          // Display predictions
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: predictionController
                                .predictionResult.value.predictions!.length,
                            itemBuilder: (context, index) {
                              final prediction = predictionController
                                  .predictionResult.value.predictions![index];
                              return _buildConditionCard(
                                condition: prediction.disease ?? 'Unknown',
                                evidence: _getEvidenceLevel(
                                    prediction.predictionScore),
                                details:
                                    'Matching Symptoms: ${prediction.matchingSymptoms ?? 0}',
                                precentage: prediction.predictionScore!,
                              );
                            },
                          );
                        }
                      });
                    },
                  ),
                  Divider(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Less Likely Conditions:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to determine evidence level based on prediction score
  String _getEvidenceLevel(double? score) {
    if (score != null) {
      if (score > 0.7) {
        return 'Strong evidence';
      } else if (score > 0.4) {
        return 'Moderate evidence';
      }
    }
    return 'Weak evidence';
  }

  Widget _buildConditionCard({
    required String condition,
    required String evidence,
    required String details,
    required double precentage,
  }) {
    return Card(
      child: ListTile(
        leading: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${(precentage * 100).toStringAsFixed(0)}%', // Display the percentage
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: evidence == 'Strong evidence'
                    ? Colors.red
                    : evidence == 'Moderate evidence'
                        ? Colors.orange
                        : Colors.green,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
        title: Text(
          condition,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(details),
        trailing: IconButton(
          icon: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            // Handle "Show details" button press
          },
        ),
      ),
    );
  }
}
