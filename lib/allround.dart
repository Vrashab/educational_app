import 'package:flutter/material.dart';

class Allround extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.redAccent,
                  child:
                  Center(
                    child:GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Essay()));
                      },
                      child: Text("Essay"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.redAccent,
                  child:
                  Center(
                    child:GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Debate()));
                      },
                      child: Text("Debate"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Card(
                  color: Colors.redAccent,
                  child:
                  Center(
                    child:GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()));
                      },
                      child: Text("Quiz"),
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


class Essay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Essay"),backgroundColor: Colors.redAccent,),
      body: SafeArea(
          child: ListView(
            children: <Widget>[
              Image.asset('assets/essay.jpg'),
              SizedBox(width: 10,height: 10,),
              Text("If you are a creative writer and want to show off your writing skills and imagination, "
                  "then this contest is for you. This contest is open to all. Anyone who wants to improve their "
                  "writing skills are most welcome. There will be an essay contest held every week. The topic "
                  "will be provided. The maximum word limit is 300-400 words. Top performers will get gift "
                  "vouchers. So stay tuned for such opportunities",textAlign: TextAlign.left,),
            ],
          ),
      ),
    );
  }
}

class Debate extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Debate"),backgroundColor: Colors.redAccent,),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset('assets/images.png'),
            SizedBox(width: 10,height: 10,),
            Text("Love watching debates?? Here a chance to have debate with participants across the globe. "
                "Not only for debate lovers, this contest will enable anyone to improve their interaction "
                "and communication skills. The contest will be held each week. Top performers will get "
                "gift vouchers",textAlign: TextAlign.left,),
          ],
        ),
      ),
    );
  }
}

class Quiz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Quiz"),backgroundColor: Colors.redAccent,),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(width: 10,height: 10,),
            Image.asset('assets/quiz.jpg'),
            SizedBox(width: 10,height: 10,),
            Text("This contest will test your knowledge .Everyone should give a try "
                "for this. Not all you compete with others , but you all gain more knowledge through "
                "this contest. Quiz will consist of 10 MCQ type questions. "
                "The questions will randomly asked from any subject like history,literature,etc "
                "Top performers will get gift vouchers. ",textAlign: TextAlign.left,),
          ],
        ),
      ),
    );
  }
}