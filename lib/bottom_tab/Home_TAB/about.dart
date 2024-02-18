import 'package:flutter/material.dart';
import 'package:solution_challege/Home_Screen/home_page.dart';
import 'education.dart';
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        leading:  IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.blue,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose a cause to donate:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              DonationCategoryCard(
                title: 'Education',
                description: 'Help children get access to education',
                icon: Icons.school,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(
                      builder: (context)=>Education(),
                  ),
                  );
                },
              ),
              DonationCategoryCard(
                title: 'Healthcare',
                description: 'Support healthcare initiatives',
                icon: Icons.local_hospital,
                onTap: () {
                  // Add your logic here
                },
              ),
              DonationCategoryCard(
                title: 'Environment',
                description: 'Protect the environment',
                icon: Icons.eco,
                onTap: () {
                  // Add your logic here
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class DonationCategoryCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  const DonationCategoryCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 10.0),
              Text(
                title,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5.0),
              Text(
                description,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
