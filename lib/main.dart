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
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(//container
            height:75.0,
            width:200.0,
            color:Colors.white,
            child:Text('Enter Username'),
            margin:EdgeInsets.only(left: 30.0),
            padding:EdgeInsets.all(20.0),
              ),
              Container(
                width: 200,
                height:75,
                color: Colors.white,
                child:Text('Enter Password'),
                margin:EdgeInsets.only(left: 30.0),
                padding:EdgeInsets.all(20.0),
                             
              ),
            ]),
            ),
        )
    );
      }
}

