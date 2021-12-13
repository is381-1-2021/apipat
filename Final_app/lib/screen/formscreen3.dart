import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dog_app/model/formmodel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>(); //ป้อนข้อมูลยัง สถานะในฟอร์ฒให้ดึง
  Student myStudent = Student(fname: '', email: '', lname: '', info: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  CollectionReference _studentCollection = FirebaseFirestore.instance.collection("postinfo");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
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
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.all(0.0),
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.deepOrange[300],
                  title: Center(child: Text("เพิ่มรายการ")),
                ),
                body: Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "รายการ",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator:
                                RequiredValidator(errorText: "กรุณาใส่ชื่อรายการ"),
                            onSaved: (fname) {
                              myStudent.fname = fname!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "ประเภทค่าใช้จ่าย",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator:
                                RequiredValidator(errorText: "กรุณาใส่ประเภท"),
                            onSaved: (lname) {
                              myStudent.lname = lname!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "รายรับ/รายจ่าย",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator: 
                              RequiredValidator(errorText: "โปรดใส่ข้อมูล"),
                            onSaved: (email) {
                              myStudent.email = email!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "มูลค่า",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator:
                                RequiredValidator(errorText: "กรุณากรอกมูลค่า"),
                            onSaved: (info) {
                              myStudent.info = info!;
                            },
                          ),
                          SizedBox(
                            child: Center(
                              child: ElevatedButton(
                                child: Text("Saved"),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange[300]),
                                onPressed: () async{
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState!.save(); //เรียกทุกตัว
                                    await _studentCollection.add({
                                      "name":myStudent.fname,
                                      "icon":myStudent.lname,
                                      "DRCR":myStudent.email,
                                      "value":myStudent.info,
                                    });
                                    formKey.currentState!.reset();
                                    
                                    
                                  }
                                },
                              ),
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
        
        });
  }
}
