import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcareapp/controllers/prediction_controller.dart';
import 'package:healthcareapp/models/prediction_model.dart';
import 'package:healthcareapp/routes.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final predictionController = Get.put(PredictionController());
    final symptomListParams = Get.parameters["symptomsList"];
    final List<String> symptomList =
        List<String>.from(jsonDecode(symptomListParams!));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Figure out what condition you most likely have'),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   label: Container(
      //     padding: EdgeInsets.all(20),
      //     child: const Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         Icon(Icons.local_hospital_outlined),
      //         Text("Recommended"),
      //         Text("Hospitals"),
      //       ],
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Results:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Possible Conditions:',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      FutureBuilder(
                        future:
                            predictionController.fetchPrediction(symptomList),
                        builder: (context, snapshot) {
                          return Obx(() {
                            if (predictionController.isLoading.value) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (predictionController
                                    .predictionResult.value.predictions ==
                                null) {
                              return const Center(
                                  child: Text('No conditions found.'));
                            } else {
                              // Display predictions
                              return ListView.builder(
                                shrinkWrap: true,
                                itemCount: predictionController
                                    .predictionResult.value.predictions!.length,
                                itemBuilder: (context, index) {
                                  final prediction = predictionController
                                      .predictionResult
                                      .value
                                      .predictions![index];
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
                    ],
                  ),
                ),
              ),
            ),
            const Divider(),
            const Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Less Likely Conditions:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        "Seek immediate medical help for severe symptoms like chest pain or difficulty breathing; consult a doctor for persistent issues. This app provides guidance only and is not a substitute for profession  al medical advice."),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Get.toNamed(AppRoutes.hospitalScreen);
                },
                icon: Icon(Icons.local_hospital_outlined),
                label: Text("Recommended Hospitals"),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Helper method to determine evidence level based on prediction score
  String _getEvidenceLevel(double? score) {
    if (score != null) {
      if (score > 0.35) {
        return 'Strong evidence';
      } else if (score > 0.15) {
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
              style: const TextStyle(
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
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(details),
        trailing: IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            // Handle "Show details" button press
          },
        ),
      ),
    );
  }
}
