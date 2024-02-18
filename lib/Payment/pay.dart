import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';
import 'Paymentdone.dart';
import 'payment.dart';


// class NewPage extends StatefulWidget {
//   const NewPage({super.key});
//
//   @override
//   State<NewPage> createState() => _NewPageState();
// }
//
// class _NewPageState extends State<NewPage> {
//
//   bool isTextEntered = false;
//   TextEditingController _textEditingController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.deepPurple.shade100,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.deepPurple.shade600,
//               width: double.infinity,
//               height: 90,
//               child: Row(
//                 children: [
//                   SizedBox(width: 20,height: 30,),
//                   IconButton(
//                     icon: Icon(Icons.arrow_back,color: Colors.white,),
//                      onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous page
//             },
//                   ),
//
//                   SizedBox(width: 30,),
//                   CircleAvatar(
//                     radius: 20,
//                     // backgroundImage: AssetImage('images/apple_img.png'),
//                   ),
//
//                   SizedBox(width: 20,),
//
//                   Column(
//                     children: [
//                       SizedBox(height: 30,),
//                       Text('Abhishek CSE',style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                       ),),
//                       Text('3434787834',style: TextStyle(
//                         fontSize: 10,
//                         color: Colors.white,
//                       ),),
//
//                     ],
//                   ),
//                    SizedBox(width: 70,),
//                   Icon(Icons.question_mark_outlined,color: Colors.white,),
//                   SizedBox(width: 20,),
//                   Icon(Icons.more_vert,color: Colors.white,),
//                 ],
//               ),
//             ),
//
//             SingleChildScrollView(
//               child: Container(
//                 child: Column(
//                   children: [
//                   Text('input'),
//                   ],
//                 ),
//               ),
//             ),
//
//             Expanded(
//               child: Container(
//                 // height: 150,
//                 child: Padding(
//                   padding: const EdgeInsets.only(right: 1,top: 650),
//                   child: TextField(
//
//                     controller: _textEditingController,
//                     style: TextStyle(color: Colors.black),
//                     onChanged: (value) {
//                       setState(() {
//                         isTextEntered = value.isNotEmpty;
//                       });
//                     },
//                     decoration: InputDecoration(
//
//                       suffixIcon: isTextEntered
//                           ? IconButton(
//                         icon: Icon(Icons.payment),
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Paymentdone(),
//                             ),
//                           );
//                         },
//                       ):
//                       Row(
//                         mainAxisSize: MainAxisSize.min, // Ensure that the Row takes minimum space required
//                         children: [
//                           Icon(Icons.photo_camera_back_outlined),
//                           SizedBox(width: 8,),
//                           Icon(Icons.add_circle_outline_outlined),
//                           SizedBox(width: 8), // Adjust the spacing between icons
//                           Icon(Icons.send),
//
//                         ],
//                       ),
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Enter the donation amount',
//                       contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
//
//                     ),
//
//                   ),
//                 ),
//
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';
import 'Paymentdone.dart';
import 'payment.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  bool isTextEntered = false;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple.shade100,
        child: Column(
          children: [
            Container(
              color: Colors.deepPurple.shade600,
              width: double.infinity,
              height: 90,
              child: Row(
                children: [
                  SizedBox(width: 20, height: 30),
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Navigate back to the previous page
                    },
                  ),
                  SizedBox(width: 30),
                  CircleAvatar(
                    radius: 20,
                    // backgroundImage: AssetImage('images/apple_img.png'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'Abhishek CSE',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '3434787834',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 70),
                  Icon(Icons.question_mark_outlined, color: Colors.white),
                  SizedBox(width: 20),
                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [Text('input')],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 1, top: 650),
                  child: TextField(
                    controller: _textEditingController,
                    style: TextStyle(color: Colors.black),
                    onChanged: (value) {
                      setState(() {
                        isTextEntered = value.isNotEmpty;
                      });
                    },
                    decoration: InputDecoration(
                      suffixIcon: isTextEntered
                          ? IconButton(
                        icon: Icon(Icons.payment),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Paymentdone(),
                            ),
                          );
                        },
                      )
                          : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.photo_camera_back_outlined),
                          SizedBox(width: 8),
                          Icon(Icons.add_circle_outline_outlined),
                          SizedBox(width: 8),
                          Icon(Icons.send),
                        ],
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter the donation amount',
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 25, horizontal: 15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
