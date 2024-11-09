import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcareapp/controllers/predict_controller.dart';
import 'package:healthcareapp/models/predict_model.dart';

class ResultScreen extends StatelessWidget {
  final List<String> symptomList;

  ResultScreen({super.key, required this.symptomList});

  @override
  Widget build(BuildContext context) {
    final predictionController = Get.put(PredictionController());

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
                'Results',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
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
                              );
                            },
                          );
                        }
                      });
                    },
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
  }) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            color: evidence == 'Strong evidence'
                ? Colors.blue
                : evidence == 'Moderate evidence'
                    ? Colors.orange
                    : Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
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
