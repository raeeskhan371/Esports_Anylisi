import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(leaderD());
}

class leaderD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Leader Dashbord",
      theme: ThemeData(primaryColor: Color(0xFF0A192F), useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: leaderDashbord(),
    );
  }
}

class leaderDashbord extends StatefulWidget {
  @override
  State<leaderDashbord> createState() => _leaderDashbordState();
}

class _leaderDashbordState extends State<leaderDashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Team Dashboard"),

        // App Bar Icons Fields
        actions: [
          IconButton(
            iconSize: 30,

            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Notification Coding
            },
          ),
        ],

        // leading: SizedBox(
        //   child: IconButton(
        //     icon: CircleAvatar(
        //       backgroundImage: AssetImage("assets/images/Leader.png"),
        //       radius: 20,
        //     ),
        //     onPressed: () {},
        //   ),
        // ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Color(0xFF3B82F6)),
        backgroundColor: Color(0xFF0A192F),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1A1F38)),

              child: Column(
                children: [
                  ClipRRect(
                    child: Image(
                      image: AssetImage(
                        "Drawer profile Pic with background.jpg",
                      ),
                      height: 100,
                      width: 100,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
