import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              _buildConditionCard(
                condition: 'Acute viral sinus infection',
                evidence: 'Strong evidence',
                details: 'Acute viral rhinosinusitis',
              ),
              _buildConditionCard(
                condition: 'Flu',
                evidence: 'Moderate evidence',
                details: 'Influenza',
              ),
              _buildConditionCard(
                condition: 'Common cold',
                evidence: 'Moderate evidence',
                details: '',
              ),
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