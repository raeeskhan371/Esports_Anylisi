import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(playerSingup());
}

class playerSingup extends StatefulWidget {
  @override
  State<playerSingup> createState() => _playerSingupState();
}

class _playerSingupState extends State<playerSingup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: playerform());
  }
}

class playerform extends StatefulWidget {
  @override
  State<playerform> createState() => _playerformState();
}

class _playerformState extends State<playerform> {
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
                "Sign up now and connect with your team.",
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
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Full Name",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
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
                    labelText: "Email Address",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
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
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
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
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 300,
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white60),
                    labelText: "Confirm Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: CupertinoColors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.lightBlueAccent),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: Text("Singup", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: Icon(
                    Icons.arrow_circle_left,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container( margin: EdgeInsets.only(bottom: 40),
                  child: Text("Go Back",style: TextStyle(color: Colors.white,fontSize: 14),))
            ],
          ),
        ),
      ),
    );
  }
}
