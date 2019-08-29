import 'package:flutter/material.dart';
import 'package:educational_app/Video.dart';
import 'package:educational_app/Discussion.dart';

class Academic_tab extends StatelessWidget{
  String acad_name="";
  Academic_tab({Key key,this.acad_name}):super(key:key);
  Map<String,List> Subject={};
  List sub=[];
  @override
  Widget build(BuildContext context) {
    List a=acad_name.split(" ");
    if(a[1]=="V" || a[1]=="VI" || a[1]=="VII"|| a[1]=="VIII"||a[1]=="IX"|| a[1]=="X"){
        Subject={"English":["Of buying and Selling","Mason Dixon Memory","Tiger in the house","Anne Frank's Story"],
                "Algebra":["Linear equations","Arithmetic Progression","Geometric Progression"],
          "Geometry":["Circle","Polygon","Geometric Construction"],
          "History and Civics":["Harappan Civilization","Vedic Civilization","Mughal Empire"],
          "Geography":["India","Mountain Ranges","Census","Rock Mormpologhy"]};
        sub=["English","Algebra","Geometry","Geometry","History and Civics","Geography"];
    }
    else{
      Subject={"Physics":["Units and Measurement","Mechanics","Friction","Electricity"],
                "Chemistry":["Introduction to chemistry","Physical Chemistry","Inorganic Chemistry","Organic Chemistry"],
                  "Maths":["Differentiation","Integration","Circles and Conics","Statistics"]};
      sub=["Physics","Chemistry","Maths"];
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Subjects"),),
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              for(var i in sub )
              SizedBox(
           width: 100,
          height: 100,
          child: Card(
          color: Colors.blueAccent,
          child:
          Center(
          child:GestureDetector(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => modules(subject_name: i,Subject: this.Subject,)));
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


class modules extends StatelessWidget{
  String subject_name="";
  Map<String,List> Subject={};
  modules({Key key,this.subject_name,this.Subject}):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(subject_name),),
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              for(var i in Subject[subject_name] )
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    color: Colors.blueAccent,
                    child:
                    Center(
                      child:GestureDetector(
                        onTap:(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>VideoPlayerScreen(name:i,))
                          );
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


