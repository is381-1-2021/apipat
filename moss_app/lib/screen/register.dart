import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:moss_app/model/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:moss_app/screen/home.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot){
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if(snapshot.connectionState == ConnectionState.done){
            return Scaffold(
      appBar: AppBar(
        title: Text("สร้างบัญชีผู้ใช้"),
        backgroundColor: Colors.deepOrange[300],
        actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.door_back_door,
                      color: Colors.white,
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return HomeScreen();
                              }));
                      },
                    ),
                    
                  ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("E-mail", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "please enter your email"),
                      EmailValidator(errorText: "Required @"),
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String? email){
                      profile.email = email!;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator:RequiredValidator(errorText: "please enter your pwd"),
                    obscureText: true,
                    onSaved: (String? password){
                      profile.password=password!;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Text("Regist", style: TextStyle(fontSize: 20)),
                      onPressed: () async{
                        if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        try{
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: profile.email!, 
                            password: profile.password!
                            ).then((value) {
                              formKey.currentState!.reset();
                              Fluttertoast.showToast(
                              msg: "completed",
                              gravity: ToastGravity.TOP);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return HomeScreen();
                              }));
                            });                            
                        }on FirebaseAuthException catch(e){
                          //print(e.code);
                          //print(e.message);
                          Fluttertoast.showToast(
                            msg: e.message!,
                            gravity: ToastGravity.CENTER
                            );
                        }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },);
  }
}