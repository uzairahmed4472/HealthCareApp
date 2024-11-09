import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthcareapp/routes.dart';

class SymptomsSelector extends StatefulWidget {
  @override
  _SymptomsSelectorState createState() => _SymptomsSelectorState();
}

class _SymptomsSelectorState extends State<SymptomsSelector> {
  // Full list of symptoms
  List<String> symptomsList = [];

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

    _initializeSymptoms();
  }

  Future<void> _initializeSymptoms() async {
    // Load symptoms and set state once loaded
    symptomsList = await loadSymptoms();
    setState(() {
      filteredSymptoms = symptomsList;
    });
  }

  Future<List<String>> loadSymptoms() async {
    // Load the JSON file as a string
    final String jsonString =
        await rootBundle.loadString('dataset/symptoms_list.json');

    // Decode the JSON string into a List<String>
    return List<String>.from(jsonDecode(jsonString));
  }

  // Function to handle search input changes
  void _filterSymptoms(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredSymptoms = symptomsList;
      } else {
        // Normalize both the search query and symptoms by replacing spaces with underscores
        String normalizedQuery = query.replaceAll(' ', '_').toLowerCase();
        filteredSymptoms = symptomsList
            .where((symptom) => symptom.toLowerCase().contains(normalizedQuery))
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
                    title: Text(symptom.replaceAll("_", " ")),
                    trailing: selectedSymptoms.contains(symptom)
                        ? Icon(Icons.check, color: Colors.green)
                        : null,
                    onTap: () => _addSymptom(symptom),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle the selected symptoms here (e.g., send them to a server)
                    print(selectedSymptoms);
                  },
                  child: const Text('Back'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle the selected symptoms here (e.g., send them to a server)
                    print(selectedSymptoms);
                    Navigator.pushNamed(context, AppRoutes.resultScreen);
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
