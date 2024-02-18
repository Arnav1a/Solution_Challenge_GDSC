import 'package:flutter/material.dart';
import './/Payment/pay.dart';
class PaymentScreen extends StatelessWidget {
  final String? selectedRole;

  PaymentScreen({Key? key, this.selectedRole}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Payment',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectedRole == 'Donor' ? 'Welcome, Donor!' : 'Welcome, Receiver!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Montserrat'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedRole == 'Donor') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewPage()));
                } else if (selectedRole == 'Receiver') {
                  // Add receiving donation logic for the receiver

                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewPage()));
                }
              },
              child: Text(
                selectedRole == 'Donor' ? 'Make a Donation' : 'Receive a Donation',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}