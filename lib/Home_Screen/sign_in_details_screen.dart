import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

import 'package:solution_challege/Home_Screen/home_page.dart';

class SignInDetail extends StatefulWidget {
  final String? selectedRole;

  const SignInDetail(this.selectedRole, {Key? key}) : super(key: key);

  @override
  State<SignInDetail> createState() => _SignInDetailState();
}

class _SignInDetailState extends State<SignInDetail> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signInWithEmailPassword() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      User? user = userCredential.user;
      if (user != null) {
        // Navigate to home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    } catch (e) {
      // Handle sign-in errors
      print("Failed to sign in with email and password: $e");
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        final UserCredential userCredential = await _auth.signInWithCredential(credential);
        User? user = userCredential.user;
        if (user != null) {
          // Check if the user is already in the Firestore users collection
          final userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
          if (!userDoc.exists) {
            // User not in Firestore, add user information to Firestore
            await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
              'email': user.email,
              'displayName': user.displayName,
              'photoURL': user.photoURL,
            });
          }
          // Navigate to home page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      }
    } catch (e) {
      // Handle sign-in errors
      print("Failed to sign in with Google: $e");
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      if (result.status == LoginStatus.success) {
        final AuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.token);
        final UserCredential userCredential = await _auth.signInWithCredential(credential);
        User? user = userCredential.user;
        if (user != null) {
          // Check if the user is already in the Firestore users collection
          final userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
          if (!userDoc.exists) {
            // User not in Firestore, add user information to Firestore
            await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
              'email': user.email,
              'displayName': user.displayName,
              'photoURL': user.photoURL,
            });
          }
          // Navigate to home page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      }
    } catch (e) {
      // Handle sign-in errors
      print("Failed to sign in with Facebook: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sign In"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email Address'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _signInWithEmailPassword,
                child: Text('Sign In'),
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Forgot password logic here
                },
                child: Text('Forgot Password?'),
              ),
              SizedBox(height: 20),
              Text('Or sign in with:'),
              SizedBox(height: 20),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //       onPressed: _signInWithGoogle,
              //       icon: Image.asset(
              //         'assets/google_icon.png',
              //         scale: 3,
              //       ),
              //       iconSize: 40,
              //     ),
              //     IconButton(
              //       onPressed: _signInWithFacebook,
              //       icon: Image.asset(
              //         'assets/facebook_icon.png',
              //         scale: 3,
              //       ),
              //       iconSize: 40,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}