import 'package:flutter/material.dart';
import 'package:educational_app/academics.dart';
import 'package:educational_app/allround.dart';
import 'package:educational_app/Profile.dart';
import 'package:educational_app/Academics_catalog.dart';
import 'package:educational_app/Discussion.dart';


class Tabar extends StatelessWidget{

  String s="";
  String type="";
  String name="";


  Tabar({Key key,this.s,this.type,this.name}):super(key:key);
  @override
  Widget build(BuildContext context) {
    String a="";
    String e="";
    // TODO: implement build
    if(this.type=='a'){
      a=s;
    }
    else if(this.type=='e'){
      e=s;
    }
    return MaterialApp(
      home: DefaultTabController(
          length: 7,
          child: Scaffold(
            appBar: AppBar(
              title: Text("App",textAlign: TextAlign.center,),
              bottom: TabBar(
                isScrollable: true,
                  tabs: [
                    Tab(text: 'Profile',),
                    Tab(text: 'Enrolled Academic Courses'),
                    Tab(text: 'Academic Course Catalog'),
                    Tab(text: 'Enrolled Distinctive Courses'),
                    Tab(text:'Distinctive Course Catalog'),
                    Tab(text:'Discussion'),
                    Tab(text: 'Contests'),
                  ]
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Profile(),
                Academics(s:a,),
                Academics_catalog(),
                Distinctive(s:e,),
                Distinctive_catalog(),
                Discussion(),
                Allround(),
              ],

            ),
          ),
      ),
    );

  }
}