import 'package:flutter/material.dart';
import 'package:moss_app/screen/mdisplay.dart';
import 'package:moss_app/screen/moss3.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DMyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class DMyHomePage extends StatefulWidget {
  DMyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<DMyHomePage> {

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
