import 'dart:async';

import 'package:flutter/material.dart';
import 'first_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  bool isPressed = false;

  late AnimationController _blinkController;
  late Animation<Color?> _blinkAnimation;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FirstScreen(),
        ),
      );
    });

    _blinkController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _blinkAnimation = _blinkController.drive(
      ColorTween(
        begin: Colors.red,
        end: Colors.transparent,
      ),
    );

    _blinkController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _blinkController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _blinkController.forward();
      }
    });

    _blinkController.forward();
  }

  @override
  void dispose() {
    _blinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00000F),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: AnimatedBuilder(
            animation: _blinkAnimation,
            builder: (context, child) {
              return Text(
                'Solution',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  shadows: [
                    for (double i = 1; i < (isPressed ? 12 : 6); i++)
                      Shadow(
                        color: _blinkAnimation.value ?? Colors.transparent,
                        blurRadius: 3 * i,
                      )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

