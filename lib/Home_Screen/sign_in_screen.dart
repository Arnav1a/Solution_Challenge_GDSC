import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/register_screen.dart';
import 'package:solution_challege/Home_Screen/sign_in_options_screen.dart';
import 'package:solution_challege/Home_Screen/sign_in_options_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void signIn() {
    // Perform sign-in logic
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 100,
                color: Colors.grey[700],
              ),
              SizedBox(height: 30),
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 30),
              // Your existing login UI widgets
              // LoginPage(
              //   controller: username,
              //   hintText: 'Username',
              //   obscureText: false,
              // ),
              // SizedBox(height: 20),
              // LoginPage(
              //   controller: password,
              //   hintText: 'Password',
              //   obscureText: true,
              // ),
              // SizedBox(height: 20),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         'Forget Password?',
              //         style: TextStyle(color: Colors.grey[600]),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20),
              // SignIn(
              //   onTap: signIn,
              // ),
              // SizedBox(height: 20),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //         child: Text('or Continue with'),
              //       ),
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final selectedRole = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInOptionScreen(),
                    ),
                  );
                },
                child: Text('Sign In'),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a Member?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 4),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext) =>
                                        RegisterScreen()));
                          },
                          child: Text(
                            'Register Now',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}