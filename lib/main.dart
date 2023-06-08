import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Piratecoin());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Piratecoin(),
      routes: {
        '/WelcomePage': (context) => WelcomePage(),
      },
    );
  }
}

class Piratecoin extends StatelessWidget {
  Piratecoin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Piratecoin',
            style: TextStyle(
              fontFamily: 'Roboto', //obtain fonts from fonts.google.com
              fontSize: 32.0,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              //learn to center the text
            ),
          ),
        ),
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  //container
                  height: 75.0,
                  width: double.infinity,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 30.0),
                  padding: EdgeInsets.all(20.0),
                  child: Text('Enter Username'),
                  //fix the code Container(// add icons
                  /*child: Row(
                  children: <Widget>[
                    Icon(Icons.login_rounded,
                    size: 50.0,
                    color: Colors.black54),
                  ],
                ),*/
                ),

                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  height: 75,
                  color: Colors.white,
                  margin: EdgeInsets.only(left: 30.0),
                  padding: EdgeInsets.all(20.0),
                  child: Text('Enter Password'),
                ), //container 2
                SizedBox(
                  height: 30.0,
                ),
         

                /*Expanded(
            child: FloatingActionButton( 
              onPressed: (){
                print('Login Successful');
                }),),*/

                Container(
                  // add icons
                  width: double.infinity,
                  height: 75,
                  child: FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 130, 168, 187),
                    onPressed: () {
                      Navigator.pushNamed(context, '/WelcomePage');
                      print('Login Successful....');
                    },
                    child: Row(
                    children: <Widget>[
                    Icon(Icons.login_outlined,
                    size: 50.0,
                    color: Colors.black38),
                  ],
                    
                    /*child: Row(
                    children: <Widget>[
                    Icon(Icons.login_outlined,
                    size: 50.0,
                    color: Color.fromARGB(255, 15, 3, 2)),
                  ],*/
                ),
                  ),
                ), //To be implemented later
                /*CircleAvatar( //to be deployed later
                Radius: 50.0,
                backgroundImage:AssetImage('images/'), //Don't forget to edit pubspec.yaml
              ), */
              ]),
                Container( 
                  child: Row(RichText(
                    text: TextSpan(
                    text: 'Forgot Your Password?',
                    style: TextStyle(color: Colors.black),
                    recognizer: TapGestureRecognizer()
                    ..onTap = () {
                    launch('https://www.https://www.linkedin.com/in/adam-mbule-2a658515b/');
                },
            ),
          ),
        ),
        ),
        ),
        ),
        
            );
  }
}

class WelcomePage extends StatelessWidget { //Welcome page navigation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Piratecoins'),
      ),
      //body: 2 columns + scrollbar--list of 20 items Items to have a mini textbox with distict font
         // Add your page content here
    );
  }
}