import 'package:tomosstoes_app/models/form_model.dart';
import 'package:tomosstoes_app/pages/Second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SixPage extends StatefulWidget{
  @override
  _SixPageState createState() => _SixPageState();
}

class _SixPageState extends State<SixPage> {
  String? _message = 'Here is where we get value back';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Health Communities'),
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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Consumer<FormModel>(
                  builder: (context, model, child){
                    return Text('Click form below to add info.\n our professor will contact you\n User info\n - ${model.Username}\n ${model.lastName}\n cat age = ${model.age}\n Probelm info ${model.CatInfor}');
                  },
                ),
              ),
              ElevatedButton(
                
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> SecondPage(),
                      ),
                  );
                },
                child: Text('Please Click to inform your probelm'),
                style: ElevatedButton.styleFrom(
                primary: Colors.black38,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      );
  }
}