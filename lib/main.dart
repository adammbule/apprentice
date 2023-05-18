import 'package:flutter/material.dart';

void main(){
  runApp(Piratecoin()    
  );
}

class Piratecoin extends StatelessWidget {
Piratecoin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Piratecoin'),
        ),
        backgroundColor: Colors.lightBlue,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(//container
            height:75.0,
            width:double.infinity,
            color:Colors.white,
            child:Text('Enter Username'),
            margin:EdgeInsets.only(left: 30.0),
            padding:EdgeInsets.all(20.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width:double.infinity,
                height:75,
                color: Colors.white,
                child:Text('Enter Password'),
                margin:EdgeInsets.only(left: 30.0),
                padding:EdgeInsets.all(20.0),
                             
              ), //container 2
              CircleAvatar(
                Radius: 20.0,
                backgroundImage:AssetImage('images/')
              ),                
            ]),
            ),
        )
    );
      }
}

