import 'package:esports_analysis_application/Prensentation/Screens/Widgets/Widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_radar_chart/flutter_radar_chart.dart';

void main() {
  runApp(leaderH());
}

class leaderH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Leader Home",
      theme: ThemeData(primaryColor: Color(0xFF0A192F), useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: leaderHome(),
    );
  }
}

class leaderHome extends StatefulWidget {
  @override
  State<leaderHome> createState() => _leaderHomeState();
}

class _leaderHomeState extends State<leaderHome> {
  @override
  Widget build(BuildContext context) {
    const ticks = [10, 20, 30, 40, 50];
    const features = ["Kills", "Damage", "Assists", "Survival", "Rescue"];
    const data = [
      [35, 42, 28, 40, 22], // Kills, Damage, Assists, Survival, Rescue
    ];

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
      body:
          // Top Banner Section
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFF0E2740),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // Top Banner Pic Control
                      child: ListTile(
                        leading: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blueGrey,
                            image: DecorationImage(
                              image: AssetImage("assets/images/Leader.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          "Raees Khan",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "Team Leader",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Icon(
                          Icons.star_border_purple500_sharp,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),

                  // Player Card Info
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            playerColumn(
                              "assets/images/Soldier.png",
                              "Player Name",
                              "Player Role",
                            ),
                            SizedBox(width: 20),
                            playerColumn(
                              "assets/images/Soldier.png",
                              "Player Name",
                              "Player Role",
                            ),
                            SizedBox(width: 20),
                            playerColumn(
                              "assets/images/Soldier.png",
                              "Player Name",
                              "Player Role",
                            ),
                            SizedBox(width: 20),
                            playerColumn(
                              "assets/images/Soldier.png",
                              "Player Name",
                              "Player Role",
                            ),
                            SizedBox(width: 10),
                            playerColumn(
                              "assets/images/Soldier.png",
                              "Player Name",
                              "Player Role",
                            ),
                            SizedBox(width: 10),
                            playerColumn(
                              "assets/images/Soldier.png",
                              "Player Name",
                              "Player Role",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage("assets/images/Leader.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          // Player Name Role
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Player Name ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text('Role', style: TextStyle(fontSize: 13)),
                                SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _columnStat(
                                      FontAwesomeIcons.gamepad,
                                      "Matches",
                                      "3",
                                      "",
                                      color: Colors.blue,
                                    ),
                                    _columnStat(
                                      FontAwesomeIcons.crosshairs,
                                      "Kills",
                                      "7",
                                      "",
                                      color: Colors.redAccent,
                                    ),
                                    _columnStat(
                                      FontAwesomeIcons.boltLightning,
                                      "Damage",
                                      "456",
                                      "",
                                      color: Colors.orange,
                                    ),
                                    _columnStat(
                                      FontAwesomeIcons.handshake,
                                      "Assists",
                                      "7",
                                      "",
                                      color: Colors.blue,
                                    ),
                                    _columnStat(
                                      FontAwesomeIcons.stopwatch,
                                      "Survival",
                                      "7",
                                      "",
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _columnStat(
                                FontAwesomeIcons.shield,
                                "Organaization",
                                "IHS",
                                "",
                                color: Colors.green,
                              ),
                              _columnStat(
                                FontAwesomeIcons.gamepad,
                                "Matches",
                                "3",
                                "",
                                color: Colors.blue,
                              ),
                              _columnStat(
                                FontAwesomeIcons.map,
                                "Maps",
                                "S,M,R",
                                "",
                                color: Colors.redAccent,
                              ),
                              _columnStat(
                                FontAwesomeIcons.stopwatch,
                                "Timing",
                                "(7:30)",
                                "",
                                color: Colors.orange,
                              ),
                              _columnStat(
                                FontAwesomeIcons.peopleGroup,
                                "Lineup",
                                "PPRG",
                                "",
                                color: Colors.blue,
                              ),


                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

// Helper For Leader Home Dart

Widget _columnStat(
  IconData icon,
  String label,
  String value,
  String pmatches, {
  Color color = Colors.white,
}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      IconTheme(
        data: IconThemeData(color: color, size: 28),
        child: FaIcon(icon),
      ),
      SizedBox(height: 6),
      Text(label, style: TextStyle(fontSize: 12)),
      Text(value, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
      Text(
        pmatches,
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget playerColumn(String pImage, String pName, String pRole) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      CircleAvatar(
        radius: 40,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(pImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(height: 5),
      Text(
        pName,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      Text(
        pRole,
        style: TextStyle(fontSize: 11, color: Colors.grey),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

// helper For schudle of Matches timing

Widget matches(
  IconData icons,
  String ORGname,
  String matchName,
  String Timing,
  String Lineup,
) {
  return Container(
    width: double.infinity,
    height: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconTheme(
                  data: IconThemeData(color: Colors.red, size: 35),
                  child: FaIcon(icons),
                ),
                SizedBox(height: 6),
                Text(
                  ORGname,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  Timing,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
