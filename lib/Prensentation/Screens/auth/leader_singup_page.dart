import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(leaderSingup());
}

class leaderSingup extends StatefulWidget {
  @override
  State<leaderSingup> createState() => _leaderSingupState();
}

class _leaderSingupState extends State<leaderSingup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: leaderform());
  }
}

class leaderform extends StatefulWidget {
  @override
  State<leaderform> createState() => _leaderformState();
}

class _leaderformState extends State<leaderform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 1),
              Image(
                image: AssetImage("assets/images/Arena logo.png"),
                height: 200,
              ),
              Text(
                "Sign up now and lead your team to victory!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),

              //   Text Fields form
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.drive_file_rename_outline_sharp,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Full Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white60),
                    suffixIcon: Icon(Icons.email_outlined, color: Colors.white),
                    labelText: "Email Address",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person, color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.groups, color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Team Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 300,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Confirm Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,

                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Text("Singup", style: TextStyle(color: Colors.white)),
                ),
              ),

              SizedBox(height: 20),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Icon(
                    Icons.arrow_circle_left,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Text(
                  "Go Back",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
