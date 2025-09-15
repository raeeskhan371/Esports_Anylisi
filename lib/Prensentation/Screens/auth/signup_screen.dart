import 'package:esports_analysis_application/Prensentation/Screens/auth/player_singup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'leader_singup_page.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: singUp()));
}

class singUp extends StatefulWidget {
  @override
  State<singUp> createState() => _singUpState();
}

class _singUpState extends State<singUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/login background.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Arena logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 0),
                Text(
                  "Create Your Account As:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: CupertinoColors.white,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => leaderSingup(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            foregroundImage: AssetImage(
                              "assets/images/Leader.png",
                            ),
                            radius: 50,
                          ),
                        ),
                        SizedBox(height: 10),

                        Text(
                          "Team Captain",
                          style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    Padding(padding: EdgeInsets.only(left: 50)),

                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => playerform()),
                            );
                          },
                          child: CircleAvatar(
                            foregroundImage: AssetImage(
                              "assets/images/Soldier.png",
                            ),
                            radius: 50,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "Team Player",
                          style: TextStyle(
                            color: CupertinoColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
