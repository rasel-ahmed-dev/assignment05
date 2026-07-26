

import 'package:flutter/material.dart';

void main (){
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget{
    HomeScreen({super.key});

    @override
    Widget build (BuildContext context){
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(),
            body: GridView(
              padding: EdgeInsets.all(16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.8,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0
                ),
                children: [
                  UserCard(),
                  UserCard(),
                  UserCard(),
                  UserCard(),
                  UserCard(),
                  UserCard(),
                ],
              
            )
            )
        
        );
    }

    SingleChildScrollView SingleChildScrollViewExample() {
      return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                
                  children: [
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                  ],
              ),
            ),
          );
    }
    
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context, index) => UserCard(),
      
    );
  }
}

class ListViewExmple extends StatelessWidget {
  const ListViewExmple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      
        children: [
          UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                    UserCard(),
                  ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({super.key,}) : isCard = false;
  const UserCard.card({super.key}) : isCard = true;

  final bool isCard;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final double width = isCard ? size.width * 0.40 : double.infinity;
    

    return Container(
      width: width,
      color: Colors.blue,
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 16.0),
                  
      child: Flex(
        direction: isCard ? Axis.vertical : Axis.horizontal ,
        children: [
          CircleAvatar(
            radius: 36.0,
            backgroundImage: NetworkImage("https://yt3.googleusercontent.com/VDquSGQXTx99BBgEx4bHOrHHI5oPw4URpIlnI4XlJt4WSwmBYbsP5Sk53v6XRt7d7Q6ScgTlOVQ=s900-c-k-c0x00ffffff-no-rj"),
          ),
                  
          isCard ? SizedBox(height: 16.0,) : SizedBox(width: 16.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Text(
                'Mahfuz Ahmed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
