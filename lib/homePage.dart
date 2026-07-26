
import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  HomePage({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          elevation: 4,
        ),
        body: Text("This is Home Page"),
        
      ),
    );
  }
}