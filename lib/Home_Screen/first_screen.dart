import 'package:flutter/material.dart';
import 'dart:async';

// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:solution_challege/login_ui/login.dart';
import 'package:solution_challege/login_ui/sign_in.dart';
import 'package:solution_challege/login_ui/square_tile.dart';
import 'home_page.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {



  // text editing controller

  final username = TextEditingController();
  final password = TextEditingController();
@override
  void signUserIn(){

  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              // logo
                Icon(
                    Icons.lock,
                  size: 100,
                  color: Colors.grey[700],

                ),

            SizedBox(height: 30,),

              Text('Welcome Back',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),),

              SizedBox(height: 30,),

              LoginPage(
                controller: username,
                hintText: 'Username',
                obscureText: false,
              ),

              SizedBox(height: 20,),

              LoginPage(
                controller: password,
                hintText: 'Password',
                obscureText: true,
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password?',
                    style: TextStyle(
                      color: Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              SignIn(
                onTap: signUserIn,
              ),

               SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),

                      child: Text('or Continue with'),
                    ),

                        Expanded(child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )
                    ),
                  ],
                ),
              ),

               SizedBox(height: 20,),

              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //
              //       // Icon(
              //       //   Icons.android_rounded,
              //       //   size: 100,// Adjust the color if needed
              //       // ),
              //
              //       // SquareTile(imagepath: 'images/apple_img.png',),
              //
              //       SizedBox(width: 120,),
              //
              //       // Icon(
              //       //   Icons.android_rounded,
              //       //   size: 100,// Adjust the color if needed
              //       // ),
              //
              //       // SquareTile(imagepath: 'images/Google_criculo_logo.jpg',),
              //
              //
              //     ],
              //   ),
              // ),

              SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Not a Member?',style: TextStyle(
                          color: Colors.grey,)
                        ),
                        SizedBox(width: 4,),
                        Text('Register Now',style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
