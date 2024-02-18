import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';
import 'pay.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  void _navigateToNewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.deepPurple,
                height: 230,
                width: 392.5,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 19,),
                        IconButton(
                          icon: Icon(Icons.arrow_back,color: Colors.white,),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: 250,),
                        Icon(Icons.recycling_outlined),
                        SizedBox(width: 10,),
                        Icon(Icons.question_mark_outlined),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 40,),
                        Text('Send Money',style:
                          TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),)
                      ],
                    ),

                    SizedBox(height: 5,),
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Text('to any UPI app',style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),),
                        SizedBox(width: 30,),
                        Icon(Icons.paypal,color: Colors.white,),
                        Text('PhonePe',style: TextStyle(
                          color: Colors.white,
                        ),),
                        Icon(Icons.paypal,color: Colors.white,),
                        Text('BHIM',style: TextStyle(
                          color: Colors.white,
                        ),),
                        Icon(Icons.paypal,color: Colors.white,),
                        Text('Gpay',style: TextStyle(
                          color: Colors.white,
                        ),),
                        // Icon(Icons.paypal,color: Colors.white,),
                        // Text('paytm',style: TextStyle(
                        //   color: Colors.white,
                        // ),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(

                      padding: const EdgeInsets.only(left: 15.0,right: 15),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(

                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Start any Contact no.',
                            prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    )


                  ],

                )
              )
            ],
          ),
          SizedBox(height: 20,width: 10),
          Container(
            child: Column(
              children: [
                      InkWell(
                      onTap: () {
                      _navigateToNewPage();
                      },
                      child: Row(
                      children: [
                      Text(
                      'Self',
                      style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                         ),
                       )
                       ],
                      ),
                      ),
          Divider(height: 10,),
                Row(
                  children: [
                    Text('Self1',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),

              ],
            ),
          )
        ],


      ),
    );
  }
}
