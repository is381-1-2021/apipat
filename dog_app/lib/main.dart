import 'package:dog_app/screen/display.dart';
import 'package:dog_app/screen/formscreen3.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2, 
        child:  Scaffold(
          body: TabBarView(
            children: [
              FormScreen(),
              DisplayScreen(),
            ],
            ),
            backgroundColor: Colors.deepOrange[300],
            bottomNavigationBar: TabBar(
              tabs: [
                Tab(text: "ตอบกระทู้",),
                Tab(text: "อ่านกระทู้",),
              ],
            ),
        ),
        );
  }
}
