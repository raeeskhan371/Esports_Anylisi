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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/login background.png"),
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.amber,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    // size control karein
                    backgroundImage: AssetImage("assets/images/profile.png"),
                    // image path
                    backgroundColor: Colors
                        .blueAccent, // agar image na mile to ye color show hoga
                  ),
                  title: Text(
                    "Raees Khan",
                    style: TextStyle(color: Colors.white),
                  ),
                  // optional
                  subtitle: Text(
                    "Team Leader",
                    style: TextStyle(color: Colors.white),
                  ), // optional
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 70,
                color: Colors.orange,
                child: Stack(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        child: Icon(Icons.person),
                      ),
                      title: Text("Name"),
                      subtitle: Text("Player Role"),
                      trailing: Icon(Icons.star_border),
                    ),

                    SizedBox(height: 100),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.cyan,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/Leader.png"),
                                  fit:BoxFit.cover)
                          ),


                        ),

                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 10),
                              child: FaIcon(
                                FontAwesomeIcons.crosshairs,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50, top: 15),
                              child: Text("Kills"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text("24.1m"),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FaIcon(FontAwesomeIcons.bolt, size: 20),
                            ),
                            Text("Demage"),
                            Text("764"),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FaIcon(
                                FontAwesomeIcons.handshake,
                                size: 30,
                              ),
                            ),
                            Text("Assists"),
                            Text("5"),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.timer, size: 20),
                            ),
                            Text("Survival"),
                            Text("24.1m"),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.medical_services, size: 20),
                            ),
                            Text("Rescue"),
                            Text("5"),

                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                    SingleChildScrollView(
                      child: SizedBox(

                          width: double.infinity,
                          height: double.infinity,
                          child: RadarChart(ticks: ticks, features: features, data: data)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
