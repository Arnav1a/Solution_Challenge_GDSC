import 'package:flutter/material.dart';
import './/Settings/edit_profile.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:Text('Account'),
        backgroundColor: Colors.blue,

      ),

      body: Column(

        children: [
           Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 150.0,top: 20),
                 child: CircleAvatar(
                   radius: 50,
                   // backgroundImage: AssetImage('path_to_your_image.jpg'),
                 ),
               ),


             ],
           ),

          SizedBox(height: 20,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 128.0),
                child: Text('Coding with T',style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ),
            ],
          ),

          SizedBox(height: 5,),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 148.0),
                child: Text('1234@gmail.com',style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ElevatedButton(

                onPressed:(){
                  Navigator.push(
                  context,MaterialPageRoute(builder: (context)=>EditProfile())
                  );
                },
                child: Text('Edit Profile',),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
              ),
            ),
          )

        ],
      ),
    );
  }
}


