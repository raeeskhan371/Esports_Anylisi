import 'package:flutter/material.dart';

void main() {
  runApp(LeaderSignup());
}

class LeaderSignup extends StatefulWidget {
  @override
  State<LeaderSignup> createState() => _LeaderSignupState();
}

class _LeaderSignupState extends State<LeaderSignup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Leader Signup",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign Up as Leader"),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Your Account",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(height: 20),

                // Full Name
                TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(height: 15),

                // Email
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 15),

                // Phone
                TextField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 15),

                // Username
                TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(height: 15),

                // Password
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15),

                // Confirm Password
                TextField(
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15),

                // Team Name
                TextField(
                  decoration: InputDecoration(
                    labelText: "Team Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                SizedBox(height: 25),

                // Signup Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Add signup logic
                    },
                    child: Text("Sign Up"),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
