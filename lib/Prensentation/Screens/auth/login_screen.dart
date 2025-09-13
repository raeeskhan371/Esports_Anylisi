import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ArenaX());
}

class ArenaX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ArenaX",
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false,
   ),
      debugShowCheckedModeBanner: false,
      home: ArenaxLogin (),
    );
  }
}
class ArenaxLogin extends StatefulWidget{
  @override
  State<ArenaxLogin> createState() => _ArenaxLoginState();
}

class _ArenaxLoginState extends State<ArenaxLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/login background.png"),
          fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 300,
              height: 300,
              child: Image(image: AssetImage("assets/images/Arena logo.png")),
            ),
            SizedBox(height: 5,),

            Container(
              width: 300,
              child: TextField(

                cursorColor: Colors.cyanAccent,
                style: TextStyle(color:Colors.white),
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.email_outlined,color: Colors.white,),
                  labelText: "Enter Your Email",
                  labelStyle: TextStyle(color: Colors.white70),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)
                  )
                      
                      
                ),

              ),
            ),
            SizedBox(height: 12,),
            Container(
              width: 300,
              child: TextField(
                cursorColor: Colors.cyanAccent,


               decoration: InputDecoration(

                 suffixIcon: Icon(Icons.remove_red_eye,color: Colors.white70,),
                 labelText: "Enter Password",
                 labelStyle: TextStyle(color:Colors.white70 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.white70),
                   borderRadius: BorderRadius.circular(5),
                 ),
                 focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.white70),
                     borderRadius: BorderRadius.circular(15)


                 )
               ),

              ),
            ),
            
            
            
          ],
          
        ),
        
      ) ,


    );
  }
}
