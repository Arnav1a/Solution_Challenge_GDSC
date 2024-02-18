import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';
import 'package:solution_challege/Home_Screen/sign_in_details_screen.dart';


class SignInOptionScreen extends StatefulWidget {
  const SignInOptionScreen({Key? key}) : super(key: key);

  @override
  _SignInOptionScreenState createState() => _SignInOptionScreenState();
}

class _SignInOptionScreenState extends State<SignInOptionScreen> {
  String? _selectedRole; // Variable to store the selected role

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose Role'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedRole = 'Donor'; // Set the selected role as Donor
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => SignInDetail(_selectedRole)));
                },
                child: Text(
                  'Sign in as Donor',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 100,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedRole =
                    'Receiver'; // Set the selected role as Receiver
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext) => SignInDetail(_selectedRole)));
                },
                child:
                Text('Sign in as Receiver', style: TextStyle(fontSize: 28)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}