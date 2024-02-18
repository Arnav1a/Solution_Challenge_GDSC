import 'package:flutter/material.dart';
import 'package:solution_challege/bottom_tab/Home_TAB/about.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Education"),
        leading:  IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.blue,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AboutPage(),
              ),
            );
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Text('''Educational Achievements \n

      Our dedication to supporting education has led to remarkable achievements over the years. Through the generous contributions of donors like you, we've been able to make a significant impact on the lives of children and communities worldwide. Here are some of our notable accomplishments in the field of education:

          School Construction Projects: With your support, we've successfully constructed numerous schools in underserved areas, providing children with access to quality education. These schools serve as safe and conducive learning environments, equipped with essential facilities and resources to foster academic growth.\n

          1. Scholarship Programs: Through our scholarship programs, we've empowered countless students to pursue higher education and achieve their academic aspirations. By removing financial barriers, we've enabled talented individuals from disadvantaged backgrounds to unlock their full potential and contribute meaningfully to society.

          Teacher Training Initiatives: Recognizing the crucial role of educators in shaping young minds, we've implemented teacher training programs to enhance teaching quality and effectiveness. By equipping teachers with innovative teaching methods and resources, we've ensured that students receive the best possible education.

      Educational Technology Integration: Embracing the digital age, we've invested in educational technology initiatives to enhance learning outcomes and expand access to educational resources. By providing students and teachers with access to digital tools and online learning platforms, we've facilitated personalized and interactive learning experiences.

          Community Outreach and Awareness: In addition to direct interventions, we've conducted community outreach and awareness campaigns to promote the importance of education and parental involvement in children's education. By fostering a culture of learning and education advocacy, we've instilled a lifelong love for learning in communities.

      Impact Assessment and Monitoring: We're committed to ensuring accountability and transparency in our educational programs. Through rigorous impact assessment and monitoring, we continuously evaluate the effectiveness of our interventions and adapt our strategies to maximize impact and sustainability.

      Your support has been instrumental in achieving these milestones, but our work is far from over. With your continued generosity, we aim to further expand our educational initiatives and empower even more individuals to break the cycle of poverty through education.

          Together, we can make a lasting difference in the lives of children and communities around the world. Thank you for your unwavering commitment to education and social progress.''')
            ),
          ],
        ),
      ),
    );
  }
}
