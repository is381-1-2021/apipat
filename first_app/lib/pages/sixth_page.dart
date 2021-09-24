import 'package:first_app/models/form_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SixthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form...'),
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
  String _firstName = '';
  String _lastName = '';
  int _age = 20;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your First Name',
              labelText: 'First Name'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter first name.';
            }
          },
          onSaved: (value) {
            _firstName = value!;
          },
          initialValue: context.read<FormModel>().firstName,
        ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.family_restroom),
              hintText: 'Your Last Name',
              labelText: 'Last Name'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter Last name.';
            }
          },
          onSaved: (value){
            _lastName = value!;
          },
          initialValue: context.read<FormModel>().lastName,
        ),
        TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.dangerous),
              hintText: 'Your Age',
              labelText: 'Ages'
            ),
            validator: (value) {
              if (value == null || value.isEmpty){
                return 'Please Enter your ages.';
            }
            try {
              if (int.parse(value) < 15 || int.parse(value) > 100 ){
                return 'plaese enter valid age ==> 15-cd 100';
              }
            } catch (e) {
              return 'please enter number only';
            }

            var a = null;
            var b = '';
          },
          onSaved: (value){
            _age = int.parse(value!);
          },
          initialValue: context.read<FormModel>().age.toString(),
        ),
       
        ElevatedButton(
          onPressed: (){
            if  (_formKey.currentState!.validate()){
              _formKey.currentState!.save();
              
              context.read<FormModel>().firstName = _firstName;
              context.read<FormModel>().lastName = _lastName;
              context.read<FormModel>().age = _age;
              
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