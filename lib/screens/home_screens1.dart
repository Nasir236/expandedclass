import 'package:flutter/material.dart';
import 'package:expandedclass/screens/about_screen1.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  List studentsInfo = [
    {"Name": "Nasir", "Course": "FLutter", "Section": "A"},
    {"Name": "Hafsa", "Course": "Graphics", "Section": "G"},
    {"Name": "Asim", "Course": "FLutter", "Section": "D"},
    {"Name": "Younas", "Course": "Web", "Section": "B"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(height: 200, color: Colors.amber),
          Expanded(
            child: ListView.builder(
              itemCount: 21,
              itemBuilder: (context, index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 11),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder:
                                (context) => AboutusScreens(
                                  studentsData: studentsInfo[index],
                                ),
                          ),
                        );
                      },
                      tileColor: Colors.blueAccent,
                      title: Text("Nasir Hussain"),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
