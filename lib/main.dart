
import 'package:assignment05/bottomNav.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomeScn());
}

class HomeScn extends StatefulWidget{
  HomeScn({super.key});

  @override
  State<HomeScn> createState() => _HomeScnState();
}

class _HomeScnState extends State<HomeScn> {

  @override
  Widget build(BuildContext context){

  

    return BottomNav();
  
  }
}