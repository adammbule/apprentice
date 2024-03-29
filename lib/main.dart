import 'package:flutter/material.dart';
////import 'package:url_launcher/url_launcher.dart';

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
        '/MoviesPage': (context) => MoviesPage(),
        '/AccountPage': (context) => AccountPage(),
        '/WatchListPage': (context) => WatchListPage(),
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
            'Piratecoin Dev',
            style: TextStyle(
              fontFamily: 'Roboto', //obtain fonts from fonts.google.com
              fontSize: 33.0,
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
                  margin: EdgeInsets.only(left: 28.0),
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

                SizedBox(
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
                /*Container( // fix this container to create forgot password hypertext
                  child: Row(RichText(
                    Text: text('Forgot Your Password?'),
                    style: TextStyle(color: Colors.black),
                    recognizer: TapGestureRecognizer(),
                    ..onTap = () {
                    launch('https://www.https://www.linkedin.com/in/adam-mbule-2a658515b/');
                },
            ),
          ),
        ),*/
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
        body: GridView.count(
          //two columns--horizontal axis
          crossAxisCount: 2
          //vertical limit of 50 items
          child: List.generate(50, (index)){
            return Center(
              child: Text(
                'Movie $index'
                style: theme.of(context).textTheme.headlineSmall,
              ),
            ),
          }
          
      
        ),
      ),
      //body: 2 columns + scrollbar--list of 20 items Items to have a mini textbox with distict font
         // Add your page content here
    );

class MoviesPage extends StatelessWidget { //Movies Page navigation
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appbar: AppBar(
        title: Text('My Movies'),
      )
      body:gridview.count(
        crossAxisCount: 2
        child: list.generate(50 (index)){
          return Center(
            child: Text(
              'Movie $index'
              style: theme.of(context).textTheme.headlineSmall,
            ),
          ),            
        }
        class AccountPage extends STatelessWidget {
          @override
          Widget build(buildContext context){
            return Scaffold(
              appBar: AppBar(
                title: text('My Account'),
              )
              body:gridview.count(
        crossAxisCount: 1
        child: list.generate(5 (index)){
          return Center(
            child: Text(
              'Setting $index'
              style: theme.of(context).textTheme.headlineSmall,
            ),
          ),
            )
          }
        }
      ),
    )
  
}
  }
}
