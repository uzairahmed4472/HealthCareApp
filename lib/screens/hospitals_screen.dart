import 'package:flutter/material.dart';

class HospitalRecommendationPage extends StatefulWidget {
  @override
  _HospitalRecommendationPageState createState() =>
      _HospitalRecommendationPageState();
}

class _HospitalRecommendationPageState extends State<HospitalRecommendationPage> {
  final List<String> hospitals = [
    'Khyber Teaching Hospital',
    'Peshawar Medical Complex',
    'Hayatabad Medical Complex',
    'Lady Reading Hospital',
    'Qazi Hussain Ahmad Medical Complex',
    'Peshawar Institute of Cardiology',
    'Saddar Hospital',
    'Islamabad Hospital',
    'Nishtar Hospital',
    'Khyber Girls Medical College',
    'Peshawar Hospital',
    'Bilal Hospital',
    'City Hospital',
    'Fauji Foundation Hospital',
    'Shifa International Hospital',
    'Medicare Hospital',
    'Peshawar Nursing Home',
    'Saira Memorial Hospital',
    'Rafiq Medical Center',
    'Ghaffar Medical Center',
    'Eidgah Hospital',
    'Cenre Hospital',
    'Bacha Khan Medical Complex',
    'Ayub Teaching Hospital',
    'Wahab Hospital',
    'Al-Khidmat Hospital',
    'Health Care Hospital',
    'Pakistan Medical Centre',
    'Santos Hospital',
    'Samson Medical Center',
  ];

  List<String> filteredHospitals = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredHospitals = hospitals; // Initialize with full hospital list
    _searchController.addListener(_filterHospitals);
  }

  void _filterHospitals() {
    setState(() {
      filteredHospitals = hospitals
          .where((hospital) => hospital
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospitals List"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search hospitals...",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: filteredHospitals.length,
              itemBuilder: (context, index) {
                final hospital = filteredHospitals[index];
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.local_hospital,
                      color: Colors.teal,
                    ),
                    title: Text(
                      hospital,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Tap for more details"),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$hospital selected'),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
