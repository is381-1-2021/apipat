import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomosstoes_app/pages/my_page.dart';

import 'models/form_model.dart';
import 'pages/my_page.dart';
import 'pages/Second_page.dart';
import 'pages/Third_page.dart';
import 'pages/Fourth_page.dart';
import 'pages/Fifth_page.dart';
import 'pages/Six_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
      create: (context) => FormModel(),
        ),      
      ],
      child: MyApp(),
    ),
  );
}   

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.pink,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.purple),
        ),
      ),
      initialRoute: '/6',
      routes: <String,WidgetBuilder> {
        '/1':(context) => SixPage(),
        '/2':(context) => SecondPage(),
        '/3':(context) => ThirdPage(),
        '/4':(context) => FourthPage(),
        '/5':(context) => Fifthpage(),
        '/6':(context) => Firstpage(),
      },
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
