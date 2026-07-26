
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

  final List<Map<String, String>> contacts = [
    {
      "name" : "Jawad",
      "phone" : "01877-777777"
    },
    {
      "name" : "Ferdous",
      "phone" : "01673-777777"
    },
    {
      "name": "Hasan",
      "phone": "01745-777777",
    },
    {
      "name": "Hasan",
      "phone": "01745-777777",
    },
    {
      "name": "Hasan",
      "phone": "01745-777777",
    },
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List", style: TextStyle(color: Colors.white70),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: EdgeInsets.all(15.0),

        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Hasan",
                border: OutlineInputBorder(),

              ),
            ),

            SizedBox(height: 16.0,),

            TextField(
              decoration: InputDecoration(
                hintText: "01745-777777",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 16.0,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: (){},
                child: Text(
                  "Add",
                  style: TextStyle(fontSize: 16, color:Colors.white70),
                ),
              ),
            ),

            SizedBox(height: 20.0,),
            SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                    
                      leading: Icon(Icons.person, size: 45.0, color: Colors.brown,),
                      title: Text("Mahfuz Ahmed", style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold), ),
                      subtitle: Text("01728-609080", style: TextStyle(fontSize: 10.0),),
                      trailing: Icon(Icons.call, color: Colors.blue, size: 30.0,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person, size: 45.0, color: Colors.brown,),
                      title: Text("Mahfuz Ahmed", style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold), ),
                      subtitle: Text("01728-609080", style: TextStyle(fontSize: 10.0),),
                      trailing: Icon(Icons.call, color: Colors.blue, size: 30.0,),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: Icon(Icons.person, size: 45.0, color: Colors.brown,),
                      title: Text("Mahfuz Ahmed", style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold), ),
                      subtitle: Text("01728-609080", style: TextStyle(fontSize: 10.0),),
                      trailing: Icon(Icons.call, color: Colors.blue, size: 30.0,),
                    ),
                  ),

                   Card(
                    child: ListTile(
                      leading: Icon(Icons.person, size: 45.0, color: Colors.brown,),
                      title: Text("Mahfuz Ahmed", style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold), ),
                      subtitle: Text("01728-609080", style: TextStyle(fontSize: 10.0),),
                      trailing: Icon(Icons.call, color: Colors.blue, size: 30.0,),
                    ),
                  ),

                   Card(
                    child: ListTile(
                      leading: Icon(Icons.person, size: 45.0, color: Colors.brown,),
                      title: Text("Mahfuz Ahmed", style: TextStyle(color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold), ),
                      subtitle: Text("01728-609080", style: TextStyle(fontSize: 10.0),),
                      trailing: Icon(Icons.call, color: Colors.blue, size: 30.0,),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}