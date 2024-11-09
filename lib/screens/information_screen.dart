

import 'package:flutter/material.dart';

class COVIDInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'COVID-19, caused by the SARS-CoV-2 virus, is a respiratory illness that can spread rapidly. It has symptoms ranging from mild to severe, and can lead to pneumonia or other complications.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Fever or chills\n'
                  '2. Cough\n'
                  '3. Shortness of breath\n'
                  '4. Fatigue\n'
                  '5. Muscle or body aches\n'
                  '6. Headache\n'
                  '7. New loss of taste or smell\n'
                  '8. Sore throat\n'
                  '9. Congestion or runny nose\n'
                  '10. Nausea or vomiting\n'
                  '11. Diarrhea',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Wear a mask in public spaces.\n'
                  '2. Maintain physical distance from others.\n'
                  '3. Wash hands frequently.\n'
                  '4. Avoid touching your face.\n'
                  '5. Get vaccinated if eligible.\n'
                  '6. Stay home if you are feeling unwell or have symptoms.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class MalariaInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Malaria Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Malaria is a life-threatening disease caused by parasites that are transmitted to people through the bites of infected female Anopheles mosquitoes. It is prevalent in tropical and subtropical regions. The symptoms of malaria can be mild to severe and may include fever, chills, and flu-like illness.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Fever\n'
                  '2. Chills\n'
                  '3. Sweats\n'
                  '4. Headache\n'
                  '5. Nausea and vomiting\n'
                  '6. Muscle pain and fatigue\n'
                  '7. Cough\n'
                  '8. Jaundice (in severe cases)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Use mosquito nets and insect repellent.\n'
                  '2. Wear protective clothing to avoid mosquito bites.\n'
                  '3. Ensure your living area is well-screened or air-conditioned.\n'
                  '4. Take antimalarial medication if recommended by a healthcare provider.\n'
                  '5. Seek prompt medical attention if symptoms appear.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class InfluenzaInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Influenza Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Influenza, commonly known as the flu, is an infectious disease caused by influenza viruses. It affects the respiratory tract and can cause mild to severe illness. Influenza is highly contagious and spreads mainly through droplets from coughs or sneezes.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Fever\n'
                  '2. Cough\n'
                  '3. Sore throat\n'
                  '4. Runny or stuffy nose\n'
                  '5. Muscle or body aches\n'
                  '6. Headaches\n'
                  '7. Fatigue\n'
                  '8. Sometimes vomiting and diarrhea (more common in children)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Get an annual flu vaccine.\n'
                  '2. Practice good hand hygiene by washing hands frequently.\n'
                  '3. Avoid close contact with sick individuals.\n'
                  '4. Cover your mouth and nose with a tissue or your elbow when coughing or sneezing.\n'
                  '5. Stay home when you are sick to prevent spreading the flu to others.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class DiabetesInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diabetes Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Diabetes is a chronic medical condition where the body does not produce enough insulin or does not use insulin effectively. It results in high blood sugar levels. There are two main types: Type 1 and Type 2. Type 1 diabetes is usually diagnosed in children and young adults, while Type 2 diabetes is more common in adults and is often associated with obesity.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Frequent urination\n'
                  '2. Excessive thirst\n'
                  '3. Unexplained weight loss\n'
                  '4. Fatigue\n'
                  '5. Blurred vision\n'
                  '6. Slow-healing sores or infections\n'
                  '7. Numbness or tingling in hands or feet',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Monitor blood sugar levels regularly.\n'
                  '2. Follow a balanced diet and exercise regularly.\n'
                  '3. Take medications as prescribed.\n'
                  '4. Maintain a healthy weight.\n'
                  '5. Regularly visit your healthcare provider for check-ups.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class HighBloodPressureInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('High Blood Pressure Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'High blood pressure, also known as hypertension, is a condition where the force of the blood against the artery walls is too high. This can lead to serious health issues, including heart disease, stroke, and kidney damage. It often has no symptoms, so regular check-ups are important.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Headaches\n'
                  '2. Shortness of breath\n'
                  '3. Nosebleeds\n'
                  '4. Dizziness\n'
                  '5. Chest pain (in severe cases)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Monitor blood pressure regularly.\n'
                  '2. Follow a heart-healthy diet.\n'
                  '3. Exercise regularly.\n'
                  '4. Limit alcohol intake.\n'
                  '5. Manage stress effectively.\n'
                  '6. Take prescribed medications as directed.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class HeartDiseaseInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heart Disease Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Heart disease refers to various conditions affecting the heart, including coronary artery disease, heart attacks, and arrhythmias. It is a leading cause of death worldwide and can result from a combination of lifestyle factors and genetic predisposition.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Chest pain or discomfort\n'
                  '2. Shortness of breath\n'
                  '3. Pain in neck, jaw, or back\n'
                  '4. Nausea or vomiting\n'
                  '5. Fatigue\n'
                  '6. Swelling in legs or ankles',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Maintain a healthy diet and exercise regularly.\n'
                  '2. Avoid smoking and limit alcohol intake.\n'
                  '3. Monitor cholesterol levels and blood pressure.\n'
                  '4. Manage stress effectively.\n'
                  '5. Follow your healthcare provider\'s advice on medications and treatments.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AsthmaInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asthma Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Asthma is a chronic respiratory condition characterized by inflammation and narrowing of the airways, which leads to difficulty breathing. It can be triggered by allergens, exercise, or respiratory infections.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Wheezing\n'
                  '2. Shortness of breath\n'
                  '3. Chest tightness\n'
                  '4. Coughing, especially at night\n'
                  '5. Difficulty breathing during exercise',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid known triggers.\n'
                  '2. Use prescribed inhalers and medications as directed.\n'
                  '3. Monitor asthma symptoms regularly.\n'
                  '4. Maintain a clean living environment to reduce allergens.\n'
                  '5. Get regular check-ups with your healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class COPDInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COPD Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Chronic Obstructive Pulmonary Disease (COPD) is a group of progressive lung diseases, including chronic bronchitis and emphysema, that cause breathing difficulties. It is often caused by long-term exposure to irritating gases or particulate matter, most often from cigarette smoke.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Chronic cough\n'
                  '2. Shortness of breath\n'
                  '3. Wheezing\n'
                  '4. Chest tightness\n'
                  '5. Frequent respiratory infections',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid smoking and exposure to secondhand smoke.\n'
                  '2. Use prescribed medications and inhalers.\n'
                  '3. Participate in pulmonary rehabilitation programs.\n'
                  '4. Maintain a healthy diet and exercise regularly.\n'
                  '5. Get regular check-ups with your healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CancerInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancer Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Cancer is a broad term for a class of diseases characterized by uncontrolled cell growth. It can occur in almost any tissue or organ in the body and can spread to other parts through the blood and lymphatic systems.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Unexplained weight loss\n'
                  '2. Fever\n'
                  '3. Fatigue\n'
                  '4. Pain\n'
                  '5. Skin changes\n'
                  '6. Persistent cough or hoarseness\n'
                  '7. Changes in bowel or bladder habits',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid tobacco use.\n'
                  '2. Maintain a healthy diet and exercise regularly.\n'
                  '3. Get regular screenings as recommended by your healthcare provider.\n'
                  '4. Limit alcohol intake.\n'
                  '5. Protect your skin from excessive sun exposure.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class StrokeInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stroke Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'A stroke occurs when blood flow to a part of the brain is interrupted, leading to damage of brain tissue. This can be caused by a blockage in an artery or bleeding in the brain. Immediate medical attention is crucial.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Sudden numbness or weakness in the face, arm, or leg, especially on one side of the body.\n'
                  '2. Sudden confusion, trouble speaking, or understanding speech.\n'
                  '3. Sudden trouble seeing in one or both eyes.\n'
                  '4. Sudden trouble walking, dizziness, loss of balance, or lack of coordination.\n'
                  '5. Sudden severe headache with no known cause.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Monitor and manage blood pressure.\n'
                  '2. Follow a healthy diet and exercise regularly.\n'
                  '3. Avoid smoking and limit alcohol intake.\n'
                  '4. Manage chronic conditions like diabetes and high cholesterol.\n'
                  '5. Seek immediate medical attention if stroke symptoms occur.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AlzheimersInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alzheimer’s Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Alzheimer’s disease is a progressive neurological disorder that leads to memory loss, cognitive decline, and changes in behavior. It is the most common cause of dementia among older adults.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Memory loss\n'
                  '2. Difficulty performing familiar tasks\n'
                  '3. Problems with language\n'
                  '4. Disorientation to time and place\n'
                  '5. Poor or decreased judgment\n'
                  '6. Changes in mood and personality',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Stay mentally and socially active.\n'
                  '2. Maintain a healthy diet and exercise regularly.\n'
                  '3. Keep track of medications and follow treatment plans.\n'
                  '4. Ensure a safe and supportive living environment.\n'
                  '5. Seek support and resources for caregivers.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ArthritisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arthritis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Arthritis refers to inflammation of the joints, causing pain and stiffness. There are several types, including osteoarthritis and rheumatoid arthritis. It can affect people of all ages and can impact daily activities.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Joint pain\n'
                  '2. Swelling\n'
                  '3. Stiffness\n'
                  '4. Decreased range of motion\n'
                  '5. Redness and warmth around joints',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Maintain a healthy weight.\n'
                  '2. Exercise regularly to keep joints flexible.\n'
                  '3. Use joint protection techniques.\n'
                  '4. Take medications as prescribed.\n'
                  '5. Seek physical therapy if recommended.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class FluInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flu Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'The flu (influenza) is a common viral infection that affects the respiratory system. It is often confused with the common cold but is generally more severe. Influenza spreads through droplets from coughing and sneezing.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Fever\n'
                  '2. Chills\n'
                  '3. Cough\n'
                  '4. Sore throat\n'
                  '5. Muscle aches\n'
                  '6. Headache\n'
                  '7. Fatigue\n'
                  '8. Occasionally, nausea and vomiting',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Get a flu vaccine annually.\n'
                  '2. Practice good hand hygiene.\n'
                  '3. Avoid close contact with infected individuals.\n'
                  '4. Cover your mouth and nose when sneezing or coughing.\n'
                  '5. Stay home when ill to prevent spreading the virus.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class GallstonesInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallstones Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Gallstones are hardened deposits of digestive fluid that can form in your gallbladder. They can vary in size and may not cause symptoms, but can sometimes block the bile ducts.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Sudden and intense pain in the upper right abdomen\n'
                  '2. Pain between the shoulder blades\n'
                  '3. Nausea or vomiting\n'
                  '4. Indigestion\n'
                  '5. Fever or chills',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Maintain a healthy weight.\n'
                  '2. Eat a balanced diet high in fiber.\n'
                  '3. Avoid fatty and fried foods.\n'
                  '4. Stay hydrated.\n'
                  '5. Regular physical activity.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class JaundiceInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jaundice Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Jaundice is a condition where the skin and the whites of the eyes turn yellow due to high levels of bilirubin in the blood. It can be a sign of liver problems or other underlying conditions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Yellowing of the skin and eyes\n'
                  '2. Dark urine\n'
                  '3. Pale stool\n'
                  '4. Itchy skin\n'
                  '5. Fatigue\n'
                  '6. Abdominal pain',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid alcohol and other liver toxins.\n'
                  '2. Follow a healthy diet.\n'
                  '3. Get regular liver function tests.\n'
                  '4. Seek medical attention for underlying conditions.\n'
                  '5. Stay hydrated.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AppendixInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appendix Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'The appendix is a small, tube-shaped organ attached to the large intestine. Appendicitis is an inflammation of the appendix that can cause severe pain and requires immediate medical attention.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Pain in the lower right abdomen\n'
                  '2. Nausea and vomiting\n'
                  '3. Loss of appetite\n'
                  '4. Fever\n'
                  '5. Abdominal swelling\n'
                  '6. Constipation or diarrhea',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Seek immediate medical attention if you have symptoms of appendicitis.\n'
                  '2. Follow medical advice and treatment plans.\n'
                  '3. Maintain a healthy diet to support overall digestive health.\n'
                  '4. Avoid heavy lifting and strenuous activities if recovering from surgery.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class HIVInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HIV/AIDS Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'HIV (Human Immunodeficiency Virus) is a virus that attacks the immune system, and AIDS (Acquired Immunodeficiency Syndrome) is the most severe phase of HIV infection. HIV reduces the ability of the immune system to fight infections and diseases.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Rapid weight loss\n'
                  '2. Recurring fever or profuse night sweats\n'
                  '3. Extreme and unexplained tiredness\n'
                  '4. Prolonged swelling of the lymph glands in the armpits, groin, or neck\n'
                  '5. Diarrhea that lasts for more than a week\n'
                  '6. Sores of the mouth, anus, or genitals\n'
                  '7. Pneumonia\n'
                  '8. Red, brown, pink, or purplish blotches on or under the skin or inside the mouth, nose, or eyelids',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Practice safe sex by using condoms.\n'
                  '2. Avoid sharing needles or other drug equipment.\n'
                  '3. Get regularly tested if at risk.\n'
                  '4. Take antiretroviral medications as prescribed.\n'
                  '5. Avoid exposure to blood and bodily fluids from others.\n'
                  '6. Ensure any medical procedures are done with sterile equipment.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


class GastroenteritisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastroenteritis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Gastroenteritis is inflammation of the stomach and intestines, usually caused by infection. It can result from viruses, bacteria, or parasites.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Diarrhea\n'
                  '2. Vomiting\n'
                  '3. Stomach cramps\n'
                  '4. Nausea\n'
                  '5. Fever\n'
                  '6. Headache\n'
                  '7. Muscle aches',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Stay hydrated by drinking plenty of fluids.\n'
                  '2. Practice good hand hygiene.\n'
                  '3. Avoid contaminated food and water.\n'
                  '4. Rest and avoid solid foods until symptoms improve.\n'
                  '5. Seek medical attention if symptoms persist or worsen.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class KidneyDiseaseInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kidney Disease Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Kidney disease includes various conditions that affect the kidneys’ ability to filter blood. Common types include chronic kidney disease and acute kidney injury.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Swelling in the legs, ankles, or feet\n'
                  '2. Fatigue\n'
                  '3. Changes in urination patterns\n'
                  '4. Nausea and vomiting\n'
                  '5. Loss of appetite\n'
                  '6. Shortness of breath\n'
                  '7. Confusion or difficulty concentrating',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Monitor and manage blood pressure and blood sugar levels.\n'
                  '2. Follow a kidney-friendly diet.\n'
                  '3. Avoid excessive use of over-the-counter pain medications.\n'
                  '4. Stay hydrated.\n'
                  '5. Get regular check-ups with a healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class PsoriasisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Psoriasis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Psoriasis is a chronic skin condition that causes red, itchy, and scaly patches. It is an autoimmune disease where the immune system mistakenly attacks healthy skin cells.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Red patches of skin covered with thick, silvery scales\n'
                  '2. Dry and cracked skin that may bleed\n'
                  '3. Itching, burning, or soreness\n'
                  '4. Swollen and stiff joints (in some cases)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Use prescribed topical treatments and medications.\n'
                  '2. Avoid triggers such as stress, smoking, and alcohol.\n'
                  '3. Keep skin moisturized.\n'
                  '4. Protect skin from injury and infection.\n'
                  '5. Follow a healthy lifestyle and diet.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class ParkinsonsDiseaseInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parkinson\'s Disease Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Parkinson\'s Disease is a progressive neurological disorder that affects movement. It is characterized by tremors, stiffness, and bradykinesia (slowness of movement).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Tremors or shaking\n'
                  '2. Stiffness in the arms, legs, or neck\n'
                  '3. Slowness of movement\n'
                  '4. Difficulty with balance and coordination\n'
                  '5. Changes in speech and writing',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Take medications as prescribed to manage symptoms.\n'
                  '2. Engage in regular physical therapy and exercise.\n'
                  '3. Maintain a healthy diet.\n'
                  '4. Use assistive devices to improve mobility.\n'
                  '5. Seek support and counseling as needed.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class MultipleSclerosisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiple Sclerosis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Multiple Sclerosis (MS) is a disease that affects the central nervous system, causing a range of symptoms including vision problems and muscle weakness. It involves the immune system attacking the protective covering of nerve fibers.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Vision problems (e.g., blurred or double vision)\n'
                  '2. Muscle weakness and spasticity\n'
                  '3. Numbness or tingling in the limbs\n'
                  '4. Problems with balance and coordination\n'
                  '5. Difficulty with thinking and memory\n'
                  '6. Fatigue\n'
                  '7. Bladder and bowel issues',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Follow a treatment plan including medications and therapy.\n'
                  '2. Engage in regular exercise to maintain mobility.\n'
                  '3. Manage stress effectively.\n'
                  '4. Use assistive devices if needed.\n'
                  '5. Monitor and manage symptoms with a healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AllergiesInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Allergies Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Allergies are immune system reactions to substances that are typically harmless. Common allergens include pollen, dust mites, mold, pet dander, and certain foods.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Sneezing\n'
                  '2. Itchy or watery eyes\n'
                  '3. Runny or stuffy nose\n'
                  '4. Skin rashes or hives\n'
                  '5. Shortness of breath or wheezing\n'
                  '6. Swelling of the lips, tongue, or throat (in severe cases)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid known allergens.\n'
                  '2. Use allergy medications as prescribed.\n'
                  '3. Keep your environment clean and free of allergens.\n'
                  '4. Wear a medical alert bracelet if you have severe allergies.\n'
                  '5. Seek emergency medical help if you experience anaphylaxis.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class HepatitisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hepatitis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Hepatitis is inflammation of the liver, commonly caused by viral infections. It can lead to liver damage and affects the liver’s ability to function properly.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Jaundice (yellowing of the skin and eyes)\n'
                  '2. Abdominal pain\n'
                  '3. Dark urine\n'
                  '4. Fatigue\n'
                  '5. Loss of appetite\n'
                  '6. Nausea and vomiting\n'
                  '7. Fever',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid sharing needles or personal items that may be contaminated.\n'
                  '2. Practice safe sex by using condoms.\n'
                  '3. Get vaccinated for hepatitis if recommended.\n'
                  '4. Avoid consuming alcohol and illicit drugs.\n'
                  '5. Follow a healthy diet and get regular medical check-ups.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class PepticUlcerDiseaseInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peptic Ulcer Disease Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Peptic Ulcer Disease involves sores that develop on the lining of the stomach, small intestine, or esophagus. These sores are usually caused by infection with H. pylori bacteria or the long-term use of nonsteroidal anti-inflammatory drugs (NSAIDs).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Burning stomach pain\n'
                  '2. Nausea\n'
                  '3. Vomiting\n'
                  '4. Loss of appetite\n'
                  '5. Indigestion\n'
                  '6. Bloating and belching',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid NSAIDs and other irritants.\n'
                  '2. Eat smaller, more frequent meals.\n'
                  '3. Limit alcohol and caffeine consumption.\n'
                  '4. Manage stress effectively.\n'
                  '5. Follow treatment plans and consult with a healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CysticFibrosisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cystic Fibrosis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Cystic Fibrosis is a genetic disorder that causes severe damage to the lungs and digestive system. It leads to the production of thick and sticky mucus that can clog airways and lead to respiratory and digestive problems.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Persistent cough\n'
                  '2. Shortness of breath\n'
                  '3. Frequent lung infections\n'
                  '4. Poor growth and weight gain\n'
                  '5. Abdominal pain and bloating\n'
                  '6. Salty-tasting skin',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Adhere to prescribed medications and therapies.\n'
                  '2. Perform regular chest physiotherapy.\n'
                  '3. Maintain a high-calorie, high-fat diet.\n'
                  '4. Get vaccinated to prevent infections.\n'
                  '5. Regularly monitor lung function with a healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class SickleCellDiseaseInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sickle Cell Disease Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Sickle Cell Disease is a genetic blood disorder characterized by abnormal hemoglobin that leads to distorted red blood cells. These sickle-shaped cells can block blood flow and cause pain and other serious complications.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Episodes of pain (crises)\n'
                  '2. Anemia\n'
                  '3. Swelling in the hands and feet\n'
                  '4. Frequent infections\n'
                  '5. Delayed growth in children\n'
                  '6. Fatigue',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Stay hydrated and avoid extreme temperatures.\n'
                  '2. Take medications as prescribed to manage pain and prevent complications.\n'
                  '3. Regular check-ups with a healthcare provider.\n'
                  '4. Get vaccinations to prevent infections.\n'
                  '5. Avoid high-altitude environments.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class TBInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuberculosis (TB) Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Tuberculosis (TB) is a bacterial infection that mainly affects the lungs but can spread to other organs. It is caused by the bacterium Mycobacterium tuberculosis.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Persistent cough\n'
                  '2. Chest pain\n'
                  '3. Coughing up blood\n'
                  '4. Night sweats\n'
                  '5. Weight loss\n'
                  '6. Fatigue\n'
                  '7. Fever',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Complete the full course of prescribed antibiotics.\n'
                  '2. Avoid close contact with others while contagious.\n'
                  '3. Use tissues and cover your mouth when coughing.\n'
                  '4. Get regular follow-ups with your healthcare provider.\n'
                  '5. Maintain good hygiene practices.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class EndometriosisInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Endometriosis Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Endometriosis is a condition where tissue similar to the lining of the uterus grows outside the uterus. This can cause pain and other symptoms, especially during menstruation.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Painful periods\n'
                  '2. Pelvic pain\n'
                  '3. Pain during intercourse\n'
                  '4. Pain with bowel movements or urination\n'
                  '5. Heavy menstrual bleeding\n'
                  '6. Infertility',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Follow treatment plans and medications prescribed by a healthcare provider.\n'
                  '2. Maintain a healthy diet and exercise regularly.\n'
                  '3. Manage stress effectively.\n'
                  '4. Seek support groups or counseling if needed.\n'
                  '5. Consider surgical options if recommended by a healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class MigraineInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Migraine Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Migraine is a type of headache characterized by severe pain, often accompanied by nausea, vomiting, and sensitivity to light and sound.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Severe, throbbing headache, often on one side of the head\n'
                  '2. Nausea and vomiting\n'
                  '3. Sensitivity to light and sound\n'
                  '4. Visual disturbances or aura\n'
                  '5. Light-headedness or dizziness',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Identify and avoid migraine triggers.\n'
                  '2. Take prescribed medications as directed.\n'
                  '3. Maintain a regular sleep schedule.\n'
                  '4. Stay hydrated and eat regular meals.\n'
                  '5. Practice stress management techniques.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class SLEInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Systemic Lupus Erythematosus (SLE) Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Systemic Lupus Erythematosus (SLE) is an autoimmune disease where the body’s immune system attacks healthy tissues, affecting various organs including the skin, joints, kidneys, and heart.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Fatigue\n'
                  '2. Joint pain and swelling\n'
                  '3. Skin rashes, especially a butterfly-shaped rash on the face\n'
                  '4. Fever\n'
                  '5. Kidney problems\n'
                  '6. Chest pain\n'
                  '7. Hair loss',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Follow prescribed treatment and medication plans.\n'
                  '2. Avoid sun exposure and use sunscreen.\n'
                  '3. Maintain a balanced diet and regular exercise.\n'
                  '4. Manage stress and get adequate rest.\n'
                  '5. Regular check-ups with your healthcare provider.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class GlaucomaInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glaucoma Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Glaucoma is a group of eye conditions that damage the optic nerve, which can lead to blindness if not treated. It is often associated with increased pressure in the eye.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Gradual loss of peripheral vision\n'
                  '2. Severe eye pain\n'
                  '3. Headaches\n'
                  '4. Nausea and vomiting\n'
                  '5. Blurred vision\n'
                  '6. Halos around lights',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Get regular eye exams to detect glaucoma early.\n'
                  '2. Use prescribed eye drops or medications as directed.\n'
                  '3. Monitor and manage intraocular pressure.\n'
                  '4. Follow a healthy lifestyle to support overall eye health.\n'
                  '5. Seek immediate medical attention if you experience sudden vision changes.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class GoutInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gout Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Gout is a form of arthritis characterized by sudden and severe pain, redness, and swelling in the joints. It is caused by the buildup of uric acid crystals in the joints.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Intense pain in the affected joint, often the big toe\n'
                  '2. Redness and swelling\n'
                  '3. Warmth and tenderness in the joint\n'
                  '4. Difficulty moving the joint\n'
                  '5. Sudden onset of symptoms, often at night',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Avoid foods high in purines, such as red meat and seafood.\n'
                  '2. Limit alcohol intake, particularly beer.\n'
                  '3. Stay hydrated and drink plenty of water.\n'
                  '4. Take prescribed medications and follow treatment plans.\n'
                  '5. Maintain a healthy weight and regular exercise.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class BipolarDisorderInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bipolar Disorder Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Bipolar Disorder is a mental health condition characterized by extreme mood swings that include emotional highs (mania or hypomania) and lows (depression).',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Elevated or irritable mood\n'
                  '2. Increased energy and activity levels\n'
                  '3. Rapid speech and racing thoughts\n'
                  '4. Decreased need for sleep\n'
                  '5. Poor judgment or impulsive behavior\n'
                  '6. Feelings of sadness, hopelessness, or worthlessness\n'
                  '7. Loss of interest in activities\n'
                  '8. Changes in appetite or sleep patterns',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Follow prescribed treatment and medication plans.\n'
                  '2. Maintain a regular routine and sleep schedule.\n'
                  '3. Monitor and manage mood changes.\n'
                  '4. Seek support from mental health professionals and support groups.\n'
                  '5. Avoid drugs and alcohol.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class SchizophreniaInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schizophrenia Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Schizophrenia is a severe mental disorder characterized by distortions in thinking, perception, emotional responsiveness, and behavior. It often includes symptoms such as hallucinations and delusions.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Hallucinations (e.g., hearing voices)\n'
                  '2. Delusions (false beliefs)\n'
                  '3. Disorganized thinking and speech\n'
                  '4. Emotional flatness or lack of expression\n'
                  '5. Difficulty with daily functioning\n'
                  '6. Social withdrawal',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Adhere to prescribed medication and treatment plans.\n'
                  '2. Engage in regular therapy and counseling.\n'
                  '3. Establish a support system with family and friends.\n'
                  '4. Avoid substance abuse.\n'
                  '5. Monitor symptoms and seek help if needed.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class PTSDInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post-Traumatic Stress Disorder (PTSD) Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Post-Traumatic Stress Disorder (PTSD) is a mental health condition triggered by experiencing or witnessing a traumatic event. It is characterized by severe anxiety, flashbacks, and persistent memories of the event.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Flashbacks or reliving the traumatic event\n'
                  '2. Nightmares and difficulty sleeping\n'
                  '3. Severe anxiety or panic attacks\n'
                  '4. Avoidance of places or people that remind you of the trauma\n'
                  '5. Emotional numbness or detachment\n'
                  '6. Irritability or anger outbursts',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Seek professional help from a therapist or counselor.\n'
                  '2. Engage in trauma-focused therapy or cognitive-behavioral therapy (CBT).\n'
                  '3. Build a support system with friends and family.\n'
                  '4. Practice relaxation techniques and mindfulness.\n'
                  '5. Avoid substance abuse and manage stress effectively.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class EczemaInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eczema (Atopic Dermatitis) Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Eczema, also known as atopic dermatitis, is a chronic skin condition characterized by itchy, inflamed, and red skin. It often occurs in people with a history of allergies or asthma.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Itchy skin\n'
                  '2. Red, inflamed patches of skin\n'
                  '3. Dry and scaly skin\n'
                  '4. Thickened skin due to scratching\n'
                  '5. Small, raised bumps that may ooze or crust over',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Use moisturizers regularly to keep skin hydrated.\n'
                  '2. Avoid known triggers such as certain soaps, fabrics, or allergens.\n'
                  '3. Use prescribed topical treatments and avoid scratching.\n'
                  '4. Wear soft, breathable clothing.\n'
                  '5. Manage stress effectively as it can worsen symptoms.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


class EpilepsyInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Epilepsy Information'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Epilepsy is a neurological disorder characterized by recurrent seizures. Seizures are caused by abnormal electrical activity in the brain.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Symptoms:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Temporary confusion\n'
                  '2. Staring spells\n'
                  '3. Uncontrolled jerking movements of the arms and legs\n'
                  '4. Loss of consciousness\n'
                  '5. Psychic symptoms, such as anxiety or déjà vu',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Precautions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '1. Take medications as prescribed.\n'
                  '2. Avoid triggers such as flashing lights or lack of sleep.\n'
                  '3. Use safety measures to prevent injury during seizures.\n'
                  '4. Inform family, friends, and coworkers about your condition.\n'
                  '5. Keep a seizure diary to track triggers and treatment effectiveness.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


