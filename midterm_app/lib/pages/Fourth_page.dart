import 'package:midterm_app/models/form_model.dart';
import 'package:midterm_app/pages/Second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FourthPage extends StatefulWidget{
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  String? _message = 'Here is where we get value back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Communities'),
        actions: [
          IconButton(
          icon: Icon(Icons.refresh),
          tooltip: 'Button1',
          onPressed: () {},
          ),
          IconButton(
          icon: Icon(Icons.healing_sharp),
          tooltip: 'Button2',
          onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<FormModel>(
                  builder: (context, model, child){
                    return Text('Post-\n - ${model.Username}\n ${model.lastName}\n cat age = ${model.age}\n Probelm info ${model.CatInfor}');
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}