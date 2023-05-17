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
        backgroundColor: Colors.teal,
        body: Container(),
      ),
    );
  }
}