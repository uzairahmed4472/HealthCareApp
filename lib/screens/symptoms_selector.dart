import 'package:flutter/material.dart';

class SymptomsSelector extends StatefulWidget {
  @override
  _SymptomsSelectorState createState() => _SymptomsSelectorState();
}

class _SymptomsSelectorState extends State<SymptomsSelector> {
  // Full list of symptoms
  final List<String> symptomsList = [
    "abdominal_pain", "abnormal_menstruation", "acidity", "acute_liver_failure",
    "altered_sensorium", "anxiety", "back_pain", "belly_pain", "blackheads",
    "bladder_discomfort", "blister", "blood_in_sputum", "bloody_stool",
    "blurred_and_distorted_vision", "breathlessness", "brittle_nails",
    "bruising", "burning_micturition", "chest_pain", "chills",
    "cold_hands_and_feets",
    // Add the rest of the symptoms here...
    "yellow_crust_ooze", "yellow_urine", "yellowing_of_eyes", "yellowish_skin"
  ];

  // List to hold selected symptoms
  List<String> selectedSymptoms = [];

  // Controller for the search bar
  TextEditingController searchController = TextEditingController();

  // Variable to hold filtered symptoms based on search input
  late List<String> filteredSymptoms;

  @override
  void initState() {
    super.initState();
    // List to hold selected symptoms
    selectedSymptoms = [];
    // Initially show all symptoms
    filteredSymptoms = symptomsList;
  }

  // Function to handle search input changes
  void _filterSymptoms(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredSymptoms = symptomsList;
      } else {
        filteredSymptoms = symptomsList
            .where((symptom) =>
                symptom.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  // Function to add a symptom to selected list
  void _addSymptom(String symptom) {
    if (!selectedSymptoms.contains(symptom)) {
      setState(() {
        selectedSymptoms.add(symptom);
      });
    }
  }

  // Function to remove a symptom from selected list
  void _removeSymptom(String symptom) {
    setState(() {
      selectedSymptoms.remove(symptom);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Symptoms")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search bar
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: "Search Symptoms",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: _filterSymptoms,
            ),
            SizedBox(height: 16),

            // Display selected symptoms with remove option
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: selectedSymptoms.map((symptom) {
                return Chip(
                  label: Text(symptom),
                  deleteIcon: Icon(Icons.close),
                  onDeleted: () => _removeSymptom(symptom),
                );
              }).toList(),
            ),
            SizedBox(height: 16),

            // Expanded list of filtered symptoms
            Expanded(
              child: ListView.builder(
                itemCount: filteredSymptoms.length,
                itemBuilder: (context, index) {
                  final symptom = filteredSymptoms[index];
                  return ListTile(
                    title: Text(symptom),
                    trailing: selectedSymptoms.contains(symptom)
                        ? Icon(Icons.check, color: Colors.green)
                        : null,
                    onTap: () => _addSymptom(symptom),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
