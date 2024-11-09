import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/routes.dart';
import 'package:healthcareapp/screens/result.dart';

class SymptomsSelectorScreen extends StatefulWidget {
  @override
  _SymptomsSelectorScreenState createState() => _SymptomsSelectorScreenState();
}

class _SymptomsSelectorScreenState extends State<SymptomsSelectorScreen> {
  // Full list of symptoms
  List<String> symptomsList = [];

  // List to hold selected symptoms
  List<String> selectedSymptoms = [];

  // Controller for the search bar
  TextEditingController searchController = TextEditingController();

  // Variable to hold filtered symptoms based on search input
  List<String> filteredSymptoms = [];

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
    if (selectedSymptoms.length >= 10) {
      // Show snackbar if the user tries to add more than 10 symptoms
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            "You can select up to 10 symptoms only.",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          duration: Duration(seconds: 1),
        ),
      );
    } else if (!selectedSymptoms.contains(symptom)) {
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
      appBar: AppBar(title: const Text("Add Symptoms")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Selected Symptoms:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // Display selected symptoms with remove option
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: selectedSymptoms.map((symptom) {
                    return Chip(
                      backgroundColor: Colors.blue,
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      deleteIconColor: Colors.white,
                      label: Text(symptom),
                      deleteIcon: const Icon(Icons.close),
                      onDeleted: () => _removeSymptom(symptom),
                    );
                  }).toList(),
                ),
              ),
            ),
            // const SizedBox(height: 16),
            Divider(),
            // Search bar
            TextField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: "Search Symptoms",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: _filterSymptoms,
            ),

            const SizedBox(height: 16),
            // Expanded list of filtered symptoms
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                  borderRadius:
                      BorderRadius.circular(8.0), // Optional: rounded corners
                ),
                child: ListView.builder(
                  itemCount: filteredSymptoms.length,
                  itemBuilder: (context, index) {
                    final symptom = filteredSymptoms[index];
                    return ListTile(
                      title: Text(symptom.replaceAll("_", " ")),
                      trailing: selectedSymptoms.contains(symptom)
                          ? const Icon(Icons.check, color: Colors.green)
                          : null,
                      onTap: () => _addSymptom(symptom),
                    );
                  },
                ),
              ),
            ),

            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                      foregroundColor: AppConstants.primaryColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new),
                  label: const Text('Back'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    // Handle the selected symptoms here (e.g., send them to a server)
                    print(selectedSymptoms);
                    Get.to(() => ResultScreen(symptomList: selectedSymptoms));
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
