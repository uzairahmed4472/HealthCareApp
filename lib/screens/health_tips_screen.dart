import 'package:flutter/material.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/strings.dart';

class HealthTipsPage extends StatelessWidget {
  const HealthTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Tips'),
        backgroundColor: AppConstants.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Stay Hydrated'),
              subtitle: Text('Drink at least 8 glasses of water a day.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Stay Hydrated'),
              subtitle: Text('Drink at least 8 glasses of water a day.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Exercise Regularly'),
              subtitle: Text(
                  'Engage in physical activity for at least 30 minutes a day.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Eat Balanced Meals'),
              subtitle: Text(
                  'Include a variety of fruits, vegetables, whole grains, and proteins.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Get Enough Sleep'),
              subtitle: Text('Aim for 7-9 hours of quality sleep each night.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Practice Good Hygiene'),
              subtitle:
                  Text('Wash your hands regularly and maintain oral hygiene.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Avoid Smoking'),
              subtitle: Text(
                  'Refrain from smoking and avoid exposure to secondhand smoke.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Limit Alcohol Intake'),
              subtitle:
                  Text('Drink alcohol in moderation or avoid it altogether.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Manage Stress'),
              subtitle: Text(
                  'Use relaxation techniques like meditation or deep breathing exercises.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Regular Health Checkups'),
              subtitle: Text(
                  'Visit your doctor for regular health screenings and checkups.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Protect Your Skin'),
              subtitle: Text(
                  'Use sunscreen and wear protective clothing when exposed to sunlight.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Maintain Healthy Weight'),
              subtitle: Text(
                  'Balance your calorie intake with physical activity to manage weight.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Eat Fiber-Rich Foods'),
              subtitle: Text(
                  'Include foods like whole grains, fruits, and vegetables in your diet.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Limit Processed Foods'),
              subtitle: Text(
                  'Reduce your consumption of processed and sugary foods.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Stay Active Mentally'),
              subtitle: Text(
                  'Engage in activities that stimulate your mind, like reading or puzzles.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Practice Safe Sex'),
              subtitle: Text(
                  'Use protection and get regular sexual health checkups.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Avoid Excessive Caffeine'),
              subtitle: Text(
                  'Limit your intake of caffeinated beverages like coffee and tea.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Get Regular Physical Exams'),
              subtitle:
                  Text('Schedule and attend annual physical examinations.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Eat Lean Proteins'),
              subtitle:
                  Text('Choose lean meats, fish, beans, and nuts for protein.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Avoid Overeating'),
              subtitle: Text(
                  'Eat in moderation and listen to your body’s hunger cues.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Stay Socially Connected'),
              subtitle: Text(
                  'Maintain relationships and engage in social activities.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Get Vaccinated'),
              subtitle: Text('Stay up-to-date with recommended vaccinations.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Practice Mindfulness'),
              subtitle: Text(
                  'Incorporate mindfulness or meditation into your daily routine.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Maintain Healthy Posture'),
              subtitle:
                  Text('Practice good posture to avoid back and neck pain.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Limit Screen Time'),
              subtitle: Text('Take breaks and avoid excessive use of screens.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Eat More Fruits'),
              subtitle: Text('Include a variety of fresh fruits in your diet.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Stay Hydrated During Exercise'),
              subtitle: Text(
                  'Drink water before, during, and after physical activities.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Reduce Sodium Intake'),
              subtitle: Text(
                  'Limit the amount of salt and salty foods in your diet.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Eat Healthy Fats'),
              subtitle: Text(
                  'Include sources of healthy fats like avocados, nuts, and olive oil.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Get Sunlight Exposure'),
              subtitle: Text(
                  'Spend some time outdoors to get vitamin D from sunlight.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Practice Safe Driving'),
              subtitle:
                  Text('Always wear a seatbelt and follow traffic rules.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Seek Help When Needed'),
              subtitle: Text(
                  'Don’t hesitate to seek professional help for mental or physical health issues.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Limit Sugar Intake'),
              subtitle:
                  Text('Reduce consumption of sugary foods and beverages.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Take Breaks'),
              subtitle: Text(
                  'Incorporate short breaks during work or study sessions to prevent burnout.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Stay Positive'),
              subtitle: Text(
                  'Maintain a positive outlook and practice gratitude regularly.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Avoid Skipping Meals'),
              subtitle: Text(
                  'Eat regular meals to maintain energy levels throughout the day.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Monitor Your Health'),
              subtitle: Text(
                  'Keep track of your health metrics like blood pressure and cholesterol levels.'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Engage in Hobbies'),
              subtitle: Text(
                  'Participate in activities you enjoy to enhance mental well-being.'),
            ),

            ListTile(
              leading: Icon(Icons.lightbulb, color: Colors.green),
              title: Text('Exercise Regularly'),
              subtitle: Text(
                  'Engage in physical activity for at least 30 minutes a day.'),
            ),
            // Add more health tips tiles here
          ],
        ),
      ),
    );
  }
}
