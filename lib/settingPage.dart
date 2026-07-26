
import 'package:flutter/material.dart';

void main(){
  runApp(SettingPages());
}

class SettingPages extends StatelessWidget{
  SettingPages({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Settings Page"),
          elevation: 4,
        ),
        body: Text("This is Settigs Page"),
        
      ),
    );
  }
}