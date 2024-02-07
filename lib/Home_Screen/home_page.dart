import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:solution_challege/Home_Screen/first_screen.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 2), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => FirstScreen(),
//         ),
//       );
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Donation'),
//       ),
//       body: Column(
//         children: [
//           Row(),
//           Row(),
//           Row(),
//           Row(
//             children: [
//               Column(),
//               Column(),
//             ],
//           ),
//
//           Row(
//             children: [
//               Column(),
//               Column(),
//             ],
//           )
//         ],
//       )
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void navigateToScreen(BuildContext context, int index) {
    Widget screen;
    switch (index) {
      case 0:
        screen = FirstScreen();
        break;
      case 1:
        screen = FirstScreen();
        break;
      case 2:
        screen = FirstScreen();
        break;
      case 3:
        screen = FirstScreen();
        break;
      case 4:
        screen = FirstScreen();
        break;
      default:
        screen = FirstScreen(); // Navigate to FirstScreen by default
        break;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text('Donation')),
      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 20,),
            child: Row(
              children: [
                Text('Financial Assistance',style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ],
            ),
          ),
          Row(),
          Row(),
          Row(
            children: [
              Column(),
              Column(),
            ],
          ),

          Row(
            children: [
              Column(),
              Column(),
            ],
          )

        ],
      ),

        // bottomNavigationBar: Container(
        //   color: Colors.black,
        //   child: Padding(
        //
        //     padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
        //     child: GNav(
        //       color: Colors.white,
        //       backgroundColor: Colors.black,
        //       activeColor: Colors.white,
        //       tabBackgroundColor: Colors.grey.shade800,
        //       gap: 3,
        //       // onTabChange: (index) {
        //       //   navigateToScreen(context, index);
        //       // },
        //     padding: EdgeInsets.all(18),
        //     tabs: const [
        //       GButton(
        //         icon: Icons.home,
        //         text: 'Home',
        //
        //       ),
        //
        //       GButton(
        //         icon: Icons.search,
        //         text: 'Search',
        //       ),
        //       GButton(
        //           icon: Icons.notifications_active_outlined,
        //       text: 'Notification',
        //       ),
        //       GButton(
        //           icon: Icons.paypal,
        //       text: 'Payment',
        //       ),
        //       GButton(
        //         icon: Icons.settings,
        //         text: 'Settings',
        //       ),
        //     ],
        //         ),
        //   ),
        // ),

      //






      bottomNavigationBar: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF009688), // Teal-like color
              Color(0xFF6A1B9A), // Deep purple
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent, // Set the background color to transparent
          color: Colors.transparent,
          buttonBackgroundColor: Colors.teal[400],// Set the color to transparent
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.payment,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            navigateToScreen(context, index);
          },
        ),
      ),

    );
  }
}
