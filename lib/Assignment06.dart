import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactScreen(),
    );
  }
}

class ContactScreen extends StatelessWidget {
  ContactScreen({super.key});

  final List<Map<String, String>> contacts = [
    {
      "name": "Jawad",
      "phone": "01877-777777",
    },
    {
      "name": "Ferdous",
      "phone": "01673-777777",
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            /// Name Field
            TextField(
              decoration: InputDecoration(
                hintText: "Hasan",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            /// Phone Field
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "01745-777777",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            /// Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text(
                  "Add",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// Contact List
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {

                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    elevation: 2,
                    child: ListTile(

                      leading: const Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.brown,
                      ),

                      title: Text(
                        contacts[index]["name"]!,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      subtitle: Text(
                        contacts[index]["phone"]!,
                        style: const TextStyle(
                          fontSize: 17,
                        ),
                      ),

                      trailing: const Icon(
                        Icons.call,
                        color: Colors.blue,
                        size: 30,
                      ),

                    ),
                  );

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}