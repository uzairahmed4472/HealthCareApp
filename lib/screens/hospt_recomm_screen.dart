import 'package:flutter/material.dart';

class HospitalRecommendationPage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: hospitals
            .map((hospital) => ListTile(
                  title: Text(hospital),
                  onTap: () {
                    // Handle hospital selection
                  },
                ))
            .toList(),
      ),
    );
  }
}
