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
            iconSize: 25,

            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Notification Coding
            },
          ),
        ],

        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xFF0A192F),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1A1F38)),

              child: Column(
                children: [
                  ClipRRect(
                    child: Image(
                      image: AssetImage(
                        "assets/images/Drawer profile Pic with background.jpg",
                      ),
                      height: 100,
                      width: 100,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  Text("\nRaees Khan", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: Text("Team Management"),
                  leading: Icon(Icons.groups),
                ),
                ListTile(
                  title: Text("Matches"),
                  leading: Icon(Icons.sports_esports),
                ),
                ListTile(
                  title: Text("Analytics"),
                  leading: Icon(Icons.bar_chart),
                ),
                ListTile(
                  title: Text("Notifications"),
                  leading: Icon(Icons.notifications_outlined),
                ),
                ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                ),

                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout_sharp),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF0A192F),
        selectedItemColor: Colors.white,
        //
        unselectedItemColor: Color(0xFFB0B0B0),
        // currentIndex: ,
        // magenta-neon
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Team"),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Analytics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: "MY Performance",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        ],
      ),
    );
  }
}
