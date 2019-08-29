import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Discussion extends StatelessWidget{

  TextEditingController message=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "Enter a query",
                ),
                controller: message,
              ),
              RaisedButton(
                child: Icon(Icons.send),
                onPressed: (){
                    Firestore.instance.collection("messages").document().setData({"query":message.text});
                },
              ),
              Expanded(
                child: StreamBuilder(
                    stream: Firestore.instance.collection('messages').snapshots(),
                    builder:(BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
                      if (!snapshot.hasData) return new Text('Loading...');
                      return new ListView(
                        children: snapshot.data.documents.map((document) {
                          return new ListTile(
                            title: new Text(document['query']),
                          );
                        }).toList(),
                      );
                    }
                ),
              ),
            ],
          ),
      ),
    );
  }
}



