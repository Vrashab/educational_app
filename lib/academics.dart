import 'package:flutter/material.dart';
import 'package:educational_app/academic_tabs.dart';
import 'package:educational_app/course_tabs.dart';

import 'dart:async';

class Academics extends StatelessWidget{
  String s="";

  static List acad_enrolled=[];

  Academics({Key key,this.s}):super(key:key);

  @override
  Widget build(BuildContext context) {
    if(s!=""){
      acad_enrolled.add(s);
      s="";
    }

    // TODO: implement build
    return Scaffold(

      body: SafeArea(
        child: ListView(
          children: <Widget>[
            for(var i in acad_enrolled )
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.purpleAccent,
                  child:
                  Center(
                    child:GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Academic_tab(acad_name: i)));
                      },
                      child: Text(i),
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

class Distinctive extends StatelessWidget{
  String s="";
  static List extra_enrolled=[];
  Distinctive({Key key,this.s}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (s!="" ){
    extra_enrolled.add(s);
    s="";
    }
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              for(var i in extra_enrolled )
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    color: Colors.cyan,
                    child:
                    Center(
                      child:GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>Course_tab(course_name: i)));
                        },
                        child: Text(i),
                      ),
                    ),
                  ),
                ),
            ],
          )),
    );
  }
}