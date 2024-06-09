import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/quote.png'),
                )
              ),
            ),
            ListTile(title: Text('Homepage',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.home,),),
            ListTile(title: Text('Categorypage',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.category_rounded,),),
            ListTile(title: Text('MotivationalQuotes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.power,),),
            ListTile(title: Text('LoveQuotes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.monitor_heart,),),
            ListTile(title: Text('HappyQuotes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.face,),),
            ListTile(title: Text('SadQuotes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.face_2_outlined,),),
            ListTile(title: Text('SpritualQuotes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),leading:Icon(Icons.spa_rounded,),),
          ],
        ),
      ),
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('🏠.Home_Page.🏠',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 500,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(color: Colors.white70,blurRadius: 1,spreadRadius: 2),
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/p2.jpg'),
                  )
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            Navigator.of(context).pushNamed('/cat');
          });

        },
        child: InkWell(child: Icon(Icons.next_plan_rounded,color: Colors.blue,),),
      ),
    );
  }
}