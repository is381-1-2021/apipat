import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moss_app/screen/dhome.dart';
import 'package:moss_app/screen/home.dart';
import 'package:moss_app/screen/loading.dart';

class WelcomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[300],
        title: Text("Welcome to meow meow application"),),
      body: Padding
      (padding: const EdgeInsets.all(10.0),
      child: Center(child: Column(
        children: [
          Text(auth.currentUser!.email!,style: TextStyle(fontSize: 25),),
          ElevatedButton(
            child: Text("moss1"),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent),
            onPressed: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context){
                  return FirstView();
                }));
            },
          ),
          ElevatedButton(
            child: Text("Log out"),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent),
            onPressed: (){
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context){
                  return HomeScreen();
              }));
            },
          )
        ],),
      ),
      ),
    );
  }
}