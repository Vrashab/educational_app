import 'package:flutter/material.dart';
import 'package:educational_app/Video.dart';
import 'package:educational_app/Discussion.dart';



class Course_tab extends StatelessWidget{
  String course_name="";
  Course_tab({Key key,this.course_name}):super(key:key);
  Map<String,List> content={
    "Python Programming":["Introduction to Programming","Variables & Operators","List","Dictionaries","Tuples","Other Data Structures","Object Oriented Programming"],
    "Web Development":["What is Web Development?","HTML","CSS","Networking Basics","Javascript"],
    "3D Modeling using Autodesk Fusion 360":["Exploring The interface","Basic 2D Sketching","3D Design"],
    "Spanish":["Alphabets","Tenses","Adjectives","Pronouns","Forming Sentences"]
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(course_name),),
      body: SafeArea(
          child: ListView(
            children: <Widget>[

              for(var i in content[course_name])
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    color: Colors.blue,
                    child:
                    Center(
                      child:GestureDetector(
                        onTap: (){
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
