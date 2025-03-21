import 'package:flutter/material.dart';

class AboutusScreens extends StatelessWidget {
  final Map studentsData;

  const AboutusScreens({super.key, required this.studentsData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back To Home"),
            ),
          ),
          Text(studentsData["Name"], style: TextStyle(fontSize: 31)),
          Text(studentsData["Course"], style: TextStyle(fontSize: 31)),
          Text(studentsData["Section"], style: TextStyle(fontSize: 31)),
        ],
      ),
    );
  }
}
