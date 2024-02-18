import 'package:flutter/material.dart';
import 'dart:io';
import 'package:process/process.dart';
// import 'package:flutterfire/flutterfire.dart';

class Paymentdone extends StatefulWidget {
  const Paymentdone({super.key});

  @override
  State<Paymentdone> createState() => _PaymentdoneState();
}

class _PaymentdoneState extends State<Paymentdone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top:298.0),
            child: Column(
              children: [
                Icon(Icons.turn_right,size: 200,color: Colors.green,),
                                       Text('Payment done',style: TextStyle(
                        fontSize: 20
                      ),),
              ],
            ),
          )),
    );
  }
}
