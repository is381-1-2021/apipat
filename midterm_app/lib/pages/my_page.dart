import 'package:flutter/material.dart';
import 'package:midterm_app/pages/Fifth_page.dart';
import 'package:midterm_app/pages/Fourth_page.dart';

import 'package:midterm_app/pages/Second_page.dart';
import 'package:midterm_app/pages/Six_page.dart';
import 'package:midterm_app/pages/Third_page.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To Lovely Meow Application'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => SixPage()),
              );
            },
            leading: Icon(Icons.healing_sharp),
            title: Text("Help My Cat"),
            subtitle: Text("Inform your cat probelm to keep in touch with professor"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            leading: Icon(Icons.announcement),
            title: Text("User Profile"),
            subtitle: Text("insert info. for people to in app to know and help you"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => ThirdPage()),
              );
            },
            leading: Icon(Icons.money),
            title: Text("Donation"),
            subtitle: Text("Donate for charity"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => FourthPage()),
              );
            },
            leading: Icon(Icons.people),
            title: Text("Member"),
            subtitle: Text("Checking Member Status"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => Fifthpage()),
              );
            },
            leading: Icon(Icons.book),
            title: Text("Communities"),
            subtitle: Text("Sharing your cat articles"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            leading: Icon(Icons.shop),
            title: Text("Shopping Mall"),
            subtitle: Text("Shopping Center"),
          ),
        ],
      ),
    );
  }
}
