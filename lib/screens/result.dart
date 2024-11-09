import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcareapp/controllers/predict_controller.dart';
import 'package:healthcareapp/core/api_client.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/services/api_services.dart';

class ResultScreen extends StatefulWidget {
  final List<String> symptomList;

  ResultScreen({super.key, required this.symptomList});
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final predictionController = Get.put(
      PredictionController(ApiService(ApiClient(AppConstants.baseUrl))));
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.symptomList);
    predictionController.fetchPrediction(widget.symptomList);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.symptomList);
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
              Container(
                child: predictionController.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: predictionController
                            .predictionResult.predictions!.length,
                        itemBuilder: (context, index) {
                          _buildConditionCard(
                            condition: 'Acute viral sinus infection',
                            evidence: 'Strong evidence',
                            details: 'Acute viral rhinosinusitis',
                          );
                        },
                      ),
              ),
              // _buildConditionCard(
              //   condition: 'Acute viral sinus infection',
              //   evidence: 'Strong evidence',
              //   details: 'Acute viral rhinosinusitis',
              // ),
              // _buildConditionCard(
              //   condition: 'Flu',
              //   evidence: 'Moderate evidence',
              //   details: 'Influenza',
              // ),
              // _buildConditionCard(
              //   condition: 'Common cold',
              //   evidence: 'Moderate evidence',
              //   details: '',
              // ),
              Text(
                'Less likely conditions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              // Add more condition cards for less likely conditions here
            ],
          ),
        ),
      ),
    );
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
