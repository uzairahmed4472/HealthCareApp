import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthcareapp/core/app_constant.dart';
import 'package:healthcareapp/routes.dart';
import 'package:healthcareapp/screens/health_tips_screen.dart';
import 'package:healthcareapp/screens/disease_info_screen.dart';
import 'package:healthcareapp/screens/hospitals_screen.dart';
import 'package:healthcareapp/screens/login_screen.dart';
import 'package:healthcareapp/strings.dart';
import 'package:healthcareapp/widgets/custom_button.dart';
import 'package:healthcareapp/widgets/slider_container.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => UserLoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      appBar: AppBar(
        title: const Text("HealthCareApp"),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.orangeAccent),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: [
          _buildHomePage(),
          _buildHistoryPage(),
          HospitalRecommendationPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_outlined),
            label: 'Hospitals',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue.shade900),
            accountName: const Text('John Doe', style: TextStyle(fontSize: 18)),
            accountEmail: const Text('johndoe@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'J',
                style: TextStyle(fontSize: 24, color: Colors.blue.shade900),
              ),
            ),
          ),
          _buildDrawerItem(Icons.info, 'About Us', () {
            // Navigate to About Us page
          }),
          _buildDrawerItem(Icons.privacy_tip, 'Privacy and Policies', () {
            // Navigate to Privacy and Policies page
          }),
          const Divider(thickness: 1, indent: 16, endIndent: 16),
          _buildDrawerItem(Icons.update, 'App Update', () {
            // Handle App Update
          }),
          _buildDrawerItem(Icons.logout, 'Logout', _logout),
        ],
      ),
    );
  }

  ListTile _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }

  Widget _buildHomePage() {
    return Container(
      color: Colors.blue.shade900,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome, UMAR',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Expanded(
            child: AutoSlidingImageContainer(),
            //   child: Container(
            //     padding: const EdgeInsets.all(16.0),
            //     decoration: const BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(30),
            //         topRight: Radius.circular(30),
            //       ),
            //     ),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         const Text(
            //           'Are you feeling unwell?\nLet\'s check your symptoms!',
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.w600,
            //             color: Colors.black,
            //           ),
            //           textAlign: TextAlign.center,
            //         ),
            //         const SizedBox(height: 20),
            //         CustomButton(
            //           text: "START SYMPTOM ASSESSMENT",
            //           onPress: () {
            //             Get.toNamed(AppRoutes.symptomSelectorScreen);
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10, // Spacing between columns
              mainAxisSpacing: 10, // Spacing between rows
              children: [
                _buildCategoryItem(
                  'Symptom Checker',
                  AppStrings.avatarSymptomChecker,
                  () => Get.toNamed(AppRoutes.symptomSelectorScreen),
                ),
                _buildCategoryItem(
                  'Health Tips',
                  AppStrings.avatarHealthTips,
                  () => Get.to(() => HealthTipsPage()),
                ),
                _buildCategoryItem(
                  'Disease Information',
                  AppStrings.avatarDisease,
                  () => Get.to(() => DiseaseInformationPage()),
                ),
                _buildCategoryItem(
                  'Hospitals',
                  AppStrings.avatarHospital,
                  () => Get.to(() => HospitalRecommendationPage()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(
      String title, String imagePath, VoidCallback onPress) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 40,
              backgroundColor: Colors.red,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHistoryPage() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'User History',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          _buildHistoryItem(
            date: '2024-08-01',
            title: 'Visited Doctor',
            description: 'Consultation with Dr. Smith regarding flu symptoms.',
          ),
          const SizedBox(height: 10),
          _buildHistoryItem(
            date: '2024-07-15',
            title: 'Routine Checkup',
            description: 'Annual physical exam with Dr. Johnson.',
          ),
          const SizedBox(height: 10),
          _buildHistoryItem(
            date: '2024-06-10',
            title: 'Lab Test',
            description: 'Blood test for cholesterol levels.',
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryItem({
    required String date,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Text(date, style: const TextStyle(color: Colors.grey)),
      ),
    );
  }

  // Widget _buildCategoryItem(
  //     String title, String imagePath, VoidCallback onPress) {
  //   return GestureDetector(
  //     onTap: onPress,
  //     child: Column(
  //       children: [
  //         CircleAvatar(
  //           backgroundImage: AssetImage(imagePath),
  //           radius: 40,
  //           backgroundColor: Colors.red,
  //         ),
  //         const SizedBox(height: 8),
  //         Text(
  //           title,
  //           style: const TextStyle(
  //             fontSize: 16,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.white,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
