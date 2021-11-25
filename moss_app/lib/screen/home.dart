import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:moss_app/screen/login.dart';
import 'package:moss_app/screen/register.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'user';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade100,
      appBar: AppBar(
        title: Text("Register/Login"),
        backgroundColor: Colors.deepOrangeAccent[100],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0), //Left top right btm.
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/caho.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,0),
                child: SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrange[300]),
                    icon: Icon(Icons.add),
                    label:
                        Text("สร้างบัญชีผู้ใช้", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return RegisterScreen();
                      }),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,10,0),
                child: SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.login),
                    label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return LoginScreen();
                      }),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
