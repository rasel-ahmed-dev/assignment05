
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: ContactScrn(),
    );
  }
}

class ContactScrn extends StatelessWidget{
  ContactScrn({super.key});

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List", style: TextStyle(color: Colors.white70),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name :",
                border: OutlineInputBorder(),
                hintText: "Enter Your Name",
                helperText: "Write Your Full Name",  
                filled: true,
                fillColor: const Color.fromARGB(255, 207, 204, 195)
              ),
            ),
            SizedBox(height: 20.0,),
            FilledButton(
              onPressed: () {
                
              },
              
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 30.0),
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)
              
                )
              ),
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}