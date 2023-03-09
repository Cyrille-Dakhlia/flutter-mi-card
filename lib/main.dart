import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                foregroundImage: AssetImage('images/my_pic.png'),
              ),
              Text(
                'Cyrille Dakhlia',
                style: GoogleFonts.caveat(
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'FLUTTER FREELANCE',
                style: GoogleFonts.sourceSansPro(
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 4.5,
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.white,
                indent: 35.0,
                endIndent: 35.0,
              ),
              MyCard(iconData: Icons.phone, text: '+33 7 62 53 24 75'),
              MyCard(
                  iconData: Icons.alternate_email,
                  text: 'dakhliacyrille@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({
    this.iconData,
    this.text,
  });

  IconData iconData;
  String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          iconData,
          color: Colors.teal.shade600,
        ),
        title: Text(
          text,
          style: GoogleFonts.sourceSansPro(
            fontSize: 20.0,
            color: Colors.teal.shade900,
          ),
        ),
      ),
    );
  }
}
