import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? selectedLanguage; // Initialize selectedLanguage as nullable
  List<String> languages = [
    'English',
    'Spanish',
    'French',
    'German',
    // Add more languages as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Language'),
        backgroundColor: Colors.deepPurple, // Change app bar color
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pinkAccent, Colors.deepPurpleAccent], // Apply gradient background
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white), // Change dropdown border color to white
            ),
            child: DropdownButton<String>(
              icon: Icon(Icons.language, color: Colors.white), // Change dropdown icon color
              iconSize: 80,
              iconEnabledColor: Colors.green,// Increase dropdown icon size
              hint: Text(
                'Select a language',
                style: TextStyle(color: Colors.white), // Change hint text color
              ),
              dropdownColor: Colors.deepPurple, // Change dropdown menu color
              style: TextStyle(color: Colors.white, fontSize: 18), // Change dropdown item text color and size
              value: selectedLanguage,

              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue; // Update selected language
                });
              },
              items: languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              // iconEnabledColor: Colors.green,

            ),
          ),
        ),
      ),
    );
  }
}
