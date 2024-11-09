import 'package:flutter/material.dart';
import 'package:healthcareapp/screens/information_screen.dart';

class DiseaseInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disease Information'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.red),
            title: Text('COVID'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => COVIDInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.green),
            title: Text('Malaria'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MalariaInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.green),
            title: Text('Heart Disease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HeartDiseaseInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.yellow),
            title: Text('Diabetes'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiabetesInformationPage()),
              );
            },
          ), ListTile(
            leading: Icon(Icons.medical_services, color: Colors.blueGrey),
            title: Text(' HighBloodPressure'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HighBloodPressureInformationPage()),
              );
            },
          ), ListTile(
            leading: Icon(Icons.medical_services, color: Colors.lightBlueAccent),
            title: Text('Asthma'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AsthmaInformationPage()),
              );
            },
          ), ListTile(
            leading: Icon(Icons.medical_services, color: Colors.black),
            title: Text('COPD'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => COPDInformationPage()),
              );
            },
          ), ListTile(
            leading: Icon(Icons.medical_services, color: Colors.lightGreen),
            title: Text('Cancer'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CancerInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.deepPurple),
            title: Text('Alzheimers'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlzheimersInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.orange),
            title: Text('Arthritis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArthritisInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.deepPurple),
            title: Text('Gallstones'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GallstonesInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.yellowAccent),
            title: Text('Jaundice'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JaundiceInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.red),
            title: Text('Appendix'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppendixInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.lightGreen),
            title: Text('HIV'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HIVInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.blue),
            title: Text('Epilepsy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EpilepsyInformationPage()),
              );
            },
          ),

          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.blueGrey),
            title: Text('Gastroenteritis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GastroenteritisInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.redAccent),
            title: Text('KidneyDisease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KidneyDiseaseInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.deepOrange),
            title: Text(' ParkinsonsDisease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ParkinsonsDiseaseInformationPage()),
              );
            },
          ),


          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.black45),
            title: Text('MultipleSclerosis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MultipleSclerosisInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.red),
            title: Text('Allergies'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllergiesInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.purpleAccent),
            title: Text('Hepatitis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HepatitisInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.orangeAccent),
            title: Text('PepticUlcerDisease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PepticUlcerDiseaseInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.lightGreenAccent),
            title: Text('CysticFibrosis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CysticFibrosisInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.redAccent),
            title: Text('SickleCellDisease'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SickleCellDiseaseInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.deepPurple),
            title: Text('TB'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TBInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.black),
            title: Text('Endometriosis'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EndometriosisInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.redAccent),
            title: Text('Migraine'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MigraineInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.yellowAccent),
            title: Text('SLE'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SLEInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.blue),
            title: Text('Glaucoma'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GlaucomaInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.deepOrange),
            title: Text('Gout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GoutInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.grey),
            title: Text('BipolarDisorder'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BipolarDisorderInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.greenAccent),
            title: Text('Schizophrenia'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SchizophreniaInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.purpleAccent),
            title: Text(' PTSD'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  PTSDInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.redAccent),
            title: Text('Eczema'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EczemaInformationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.medical_services, color: Colors.blue),
            title: Text('Influenza'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfluenzaInformationPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

