import 'package:tomosstoes_app/models/form_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Probelms'),
      ),
      body: MyCustomForm(),
      );
   }
}

class MyCustomForm extends StatefulWidget{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  String _Username = '';
  String _lastName = '';
  int _age = 20;
  String _CatInfor = '';
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Show your Name',
              labelText: 'Username'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter Your User Name.';
              }
          },
          onSaved: (value) {
            _Username = value!;
          },
          initialValue: context.read<FormModel>().Username,
        ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.favorite),
              hintText: 'สายพันธุ์ของแมวคุณ',
              labelText: 'Your cat'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter cat information.';
            }
          },
          onSaved: (value){
            _lastName = value!;
          },
          initialValue: context.read<FormModel>().lastName,
        ),
        TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.cake_outlined),
              hintText: 'Your cat age',
              labelText: 'cat ages'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter your cat ages.';
            }

            var a = null;
            var b = '';
          },
          onSaved: (value){
            _age = int.parse(value!);
          },
          initialValue: context.read<FormModel>().age.toString(),
        ),
        TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.announcement),
              hintText: 'ใส่ปัญหาของคุณ(หากมี)',
              labelText: 'แจ้งปัญหาน้องแมว'
            ),
          onSaved: (value){
            _CatInfor = value!;
          },
          initialValue: context.read<FormModel>().CatInfor,
        ),
        
       
        ElevatedButton(
          onPressed: (){
            if  (_formKey.currentState!.validate()){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Your Infomation have been sent!')),
              );
              _formKey.currentState!.save();
              
              context.read<FormModel>().Username = _Username;
              context.read<FormModel>().lastName = _lastName;
              context.read<FormModel>().age = _age;
              context.read<FormModel>().CatInfor = _CatInfor;
              
              Navigator.pop(context);
            }
          },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}