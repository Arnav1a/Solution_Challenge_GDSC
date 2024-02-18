import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:solution_challege/Home_Screen/notification_screen.dart';
import 'package:solution_challege/Home_Screen/payment_screen.dart';
import 'package:solution_challege/Home_Screen/setting_screen.dart';
import 'package:solution_challege/Home_Screen/sign_in_options_screen.dart';

class HomePage extends StatefulWidget {
  final String? selectedRole;

  const HomePage({Key? key, this.selectedRole}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Donation',
            style: TextStyle(fontFamily: 'Pacifico'), // Custom font
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 20),
            child: Text(
              'Welcome to Our Donation App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat', // Custom font
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'We help the poor and the needy by providing donations and support.',
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 16,
                fontFamily: 'Montserrat', // Custom font
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 20),
                AspectRatio(
                  aspectRatio: 16 / 9, // Adjust the aspect ratio as needed
                  child: Image.asset(
                    "assets/download.jpg",
                    fit: BoxFit.cover, // Ensure the image covers the entire space
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat', // Custom font
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Our organization is committed to making a positive impact by providing assistance to those in need. With your support, we can make a difference in the lives of many.',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontFamily: 'Montserrat', // Custom font
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'How You Can Help',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat', // Custom font
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'You can contribute to our cause by making a donation or volunteering your time. Together, we can make a difference in the world.',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                      fontFamily: 'Montserrat', // Custom font
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF009688), // Teal-like color
              Color(0xFF6A1B9A), // Deep purple
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.transparent,
          buttonBackgroundColor: Colors.teal[400],
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.payment,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            navigateToScreen(context, index);
          },
        ),
      ),
    );
  }

  void navigateToScreen(BuildContext context, int index) {
    switch (index) {
      case 0:
      // Home screen, do nothing
        break;
      case 1:
      // Notifications screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationScreen()),
        );
        break;
      case 2:
      // Payment screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PaymentScreen(selectedRole: widget.selectedRole)),
        );
        break;
      case 3:
      // Settings screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SettingsScreen()),
        );
        break;
    }
  }
}