import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({ Key? key }) : super(key: key);

  @override
  _DisplayScreenState createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[300],
          title:Center(child: Text("กระทู้แมวๆ")),
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("postinfo").snapshots(),
          builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
            if(snapshot.hasData){
            }
              return Padding(
                padding: const EdgeInsets.fromLTRB(10,15,10,25),
                child: ListView(
                  reverse: true,
                  children: snapshot.data!.docs.map((document){
                    return Container(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.black87,
                          radius: 30,
                          child: FittedBox(child: Text(
                            document["catname"]),
                          ),
                        ),
                        title: Text(document["fname"]+":"+document["email"]),
                        subtitle: Text(document["fname"]+document["info"]),
                      ),
                    );
                  }).toList(),
                ),
              );
          },
        ),
      ),
    );
  }
}