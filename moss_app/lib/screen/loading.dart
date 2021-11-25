import 'dart:async';

import 'package:flutter/material.dart';
import 'package:moss_app/screen/dhome.dart';

class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
  // 5 seconds over, navigate to Page2.
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => DMyHomePage(title: 'Hi',)));
});
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Image.asset('assets/cathomepage.png'),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(5),
                  child: Text('Loading...',
                  style: TextStyle(fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}