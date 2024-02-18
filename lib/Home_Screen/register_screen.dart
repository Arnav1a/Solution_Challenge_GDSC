import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _registerWithEmailPassword(String email, String password) async {
    try {
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        // Navigate to home page after successful registration
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext) => HomePage()),
        );
      }
    } catch (e) {
      // Handle registration errors
      print('Failed to register with email and password: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to register. Please try again later.'),
        ),
      );
    }
  }

  Future<void> _registerWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      final UserCredential authResult = await _auth.signInWithCredential(credential);
      if (authResult.user != null) {
        // Navigate to home page after successful registration/sign-in
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext) => HomePage()),
        );
      }
    } catch (e) {
      // Handle registration errors
      print('Failed to register with Google: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to register with Google. Please try again later.'),
        ),
      );
    }
  }

  Future<void> _registerWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      final AuthCredential credential = FacebookAuthProvider.credential(
        result.accessToken!.token,
      );
      final UserCredential authResult =
      await _auth.signInWithCredential(credential);
      if (authResult.user != null) {
        // Navigate to home page after successful registration/sign-in
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext) => HomePage()),
        );
      }
    } catch (e) {
      // Handle registration errors
      print('Failed to register with Facebook: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to register with Facebook. Please try again later.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sign Up"),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Get user inputs
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  _registerWithEmailPassword(email, password);
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 20),
              Text('Or sign up with:'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      _registerWithGoogle();
                    },
                    icon: Image.asset(
                      'assets/google_icon.png',
                      scale: 2.2,
                    ),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      _registerWithFacebook();
                    },
                    icon: Image.asset(
                      'assets/facebook_icon.png',
                      scale: 3,
                    ),
                    iconSize: 40,
                  ),
                  IconButton(
                    onPressed: () {
                      // Sign up with Microsoft logic here
                    },
                    icon: Image.asset(
                      'assets/microsoft_icon.png',
                      scale: 3,
                    ),
                    iconSize: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}