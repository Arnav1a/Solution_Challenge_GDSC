import 'package:flutter/material.dart';
import 'package:solution_challege/Settings/Privacy&Security.dart';
import 'package:solution_challege/Settings/language.dart';
import './/Settings/account.dart';
import 'notification_screen.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Settings',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'App Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account', style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Montserrat')),
              onTap: () {
                // Navigate to account settings
                Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context)=>Account()));
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications', style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Montserrat')),
              onTap: () {
                // Navigate to notification settings
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>NotificationScreen())
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.security),
              title: Text('Privacy & Security', style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Montserrat')),
              onTap: () {
                // Navigate to privacy & security settings
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Privacy()));
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language', style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Montserrat')),
              onTap: () {
                // Navigate to language settings
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Language()));
              },
            ),
          ],
        ),
      ),
    );
  }
}