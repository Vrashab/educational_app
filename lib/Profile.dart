import 'package:flutter/material.dart';
import 'package:educational_app/main.dart';

class Profile extends StatelessWidget{


  String name="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      body: SafeArea(
          child: Center(
        child:ListView(
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                    color: Colors.deepPurpleAccent,
                    child: Icon(Icons.account_circle,size:50,)
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,

                child: Card(
                    color: Colors.deepPurpleAccent,
                    child:Center(
                    child:Text("Name here",textScaleFactor: 2)),
                ),

              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.deepPurpleAccent,
                    child:Center(
                    child:GestureDetector(
                    child:Text("Settings",textScaleFactor: 2,textAlign: TextAlign.center,),
                      onTap:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>Settings())
                        );
                      },
                    ),
                    ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.deepPurpleAccent,
                  child:Center(
                  child:GestureDetector(
                  child: Text("Sign Out",textScaleFactor: 2),
                  onTap:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>LoginApp())
                    );
                  },
                  ),
                ),
              ),
              ),
            ],
          )),
      ),
    );
  }
}

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Settings"),),
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 10,
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text("Download only on wifi",style: TextStyle(fontSize: 17,),),
                  Slider(value:0,min: 0,max:1, onChanged: null),
                ],
              ),
              SizedBox(
                width: 10,
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text("Save to SD Card",style: TextStyle(fontSize: 17,),),
                  Slider(value:0,min: 0,max: 1, onChanged: null),
                ],
              )
              ,
            ],
          )),
    );
  }
}