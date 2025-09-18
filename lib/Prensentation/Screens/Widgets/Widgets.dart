
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer extends StatefulWidget{
  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

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