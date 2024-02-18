import 'package:flutter/material.dart';

class NotificationDetails extends StatelessWidget {
  const NotificationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 118.0,left: 80,bottom: 80,),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.grey.shade300,
          child: Center(
              child: Text('Notification Details'),
          ),
        ),
      ),
    );
  }
}
