import 'package:flutter/material.dart';
import 'package:educational_app/tabs.dart';


class Academics_catalog extends StatelessWidget{
  static var academic_list=["Class XI (CBSE)","Class XII (CBSE)","Class IX (CBSE)","Class VII (CBSE)"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            for (var i in academic_list)
            SizedBox(
              width: 100,
              height: 100,
              child: Card(
                color: Colors.purpleAccent,
                child:
                Center(
                  child:Column(
                    children: <Widget>[
                      Text(i),
                      RaisedButton(
                        child: Text('Enroll'),
                        color: Colors.red,
                        onPressed:(){
                          academic_list.remove(i);
                          Navigator.push(
                              context,
                            MaterialPageRoute(builder: (context)=>payment(s:i,type: 'a',))
                          );
                        }
                      ),
                    ],
                ),
              ),
            ),
            ),


          ],
        ),
      ),
    );
  }
}

class Distinctive_catalog extends StatelessWidget{
  static var distinctive_list=["Python Programming","Web Development","3D Modeling using Autodesk Fusion 360","Spanish"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              for (var i in distinctive_list)
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    color: Colors.cyanAccent,
                    child:
                    Center(
                      child:Column(
                        children: <Widget>[
                          Text(i),
                          RaisedButton(
                              child: Text('Enroll'),
                              color: Colors.red,
                              onPressed:(){
                                distinctive_list.remove(i);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>payment(s:i,type: 'e',))
                                );
                              }
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ),
    );
  }
}
class payment extends StatelessWidget{
  String s="";
  String type='';
  payment({Key key,this.s,this.type}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppBar(title: Text("Payment"),
              ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text(
              "Name of course:",
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text(s),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text("Cost:  Rs 100"),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Text("Enter Card Details"),
          SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
                  labelText: "CARD NUMBER",
                  filled: true,
              ),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "CVV number",
              filled: true,
            ),
            obscureText: true,
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          RaisedButton(
            child: Text("Submit"),
            color: Colors.green,
            onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Tabar(s: this.s,type:this.type)));
            }
          ),
        ],
      ),
    );
  }
}

