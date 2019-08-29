import 'package:flutter/material.dart';
import 'package:educational_app/tabs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

/// This widget is the root of our application.
///
/// The first screen we see is a list [Categories].
///
///
class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Login',
        home: LoginApp(),
        debugShowCheckedModeBanner: false,
    );
  }
}

class LoginApp extends StatefulWidget {
    @override
    _LoginState createState() => _LoginState();
  }


class _LoginState extends State<LoginApp>{

  String name="";
  String email="";
  String password="";
  String message="";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height:20),
                  Text('WELCOME',textScaleFactor: 2.0,),
                ],
              ),
              SizedBox(height:30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                ),
                onChanged: (value){
                  this.email=value;
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                ),
                obscureText: true,
                onChanged: (value){
                  this.password=value;
                },
              ),
              RaisedButton(
                child: Text("LOGIN"),
                onPressed: (){
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: this.email, password: this.password).
                    then((signedUsers){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => Tabar()));

                    }).catchError(
                        (e){
                          message=e.toString();
                        }
                    );
                },
              ),
              error(),
              SizedBox(height: 20.0),
              SizedBox(
                width: 20.0,
                height:20.0,
                child:GestureDetector(
                  child: Center(
                    child:Text("Create account"),),

                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => signup()));
                  },
                )
              ),

            ],
          ),

      ),
    );
  }
  Future navigateToTabs(context) async{
    Navigator.of(context);
  }
  Widget error(){
    if(this.message.length>0 && this.message!=null){
      return Container(
        child:Center(
            child:Text("Invalid password or Email")),
      );
    }
    else{
      return SizedBox(width: 0,height: 0,);
          this.message="";
    }
  }
}


class signup extends StatelessWidget{
  static String email="";
  static String password="";
  static String confirmpassword="";
  static String message="";
  static String name="";
  static String id="";
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          appBar: AppBar(title: Text("Signup"),backgroundColor: Colors.red,) ,
          body:SafeArea(
              child: ListView(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Name",
                    ),
                    onChanged: (value){
                      name=value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Email",
                    ),
                      onChanged: (value){
                          email=value;
                      },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Password",
                    ),
                    obscureText: true,
                    onChanged: (value){
                      password=value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: "Confirm Password",
                    ),
                    obscureText: true,
                    onChanged: (value){
                      confirmpassword=value;
                    },
                  ),
                  error(),
                  RaisedButton(
                    child: Text("Create Account"),
                      onPressed:()async{
                        if(password==confirmpassword && email!=null) {
                          _handleSignIn();
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Tabar()));
                        }
                        else{
                          message="password do not match";
                        }

                  }),
                ],
              ),
          ),
    );
  }

    void _handleSignIn() async {
    final FirebaseUser user = (await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ));
    assert (user != null);
    assert (await user.getIdToken() != null);
    Firestore.instance.collection("users").document(user.uid).setData({"name":name,"email":email});
  }
  Widget error(){
    if(message=="password do not match"){
      return Container(
        child:Center(

            child:Text("Passwords do not match")),
      );
    }
    else{
      return SizedBox(width: 0,height: 0,);
      message="";
    }
  }
}






