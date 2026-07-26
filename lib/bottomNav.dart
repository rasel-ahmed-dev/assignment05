
import 'package:assignment05/homePage.dart';
import 'package:assignment05/main.dart';
import 'package:assignment05/settingPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BottomNav());
}

class BottomNav extends StatefulWidget{
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

    int _selectedIndex =0;
    
  @override
  Widget build(BuildContext context){

  List<Widget> screen =[ HomePage(), SettingPages() ];

    return MaterialApp(
      home: Scaffold(
        
        body: screen[_selectedIndex],
        
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.red,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
          ],
        ),
      ),
    );
  }
}