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
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 860,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/p2.jpg'),
                    )),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          setState(() {
            Navigator.of(context).pushNamed('/cat');
          });
        },
        child: InkWell(child: Icon(Icons.next_plan_rounded)),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: Text('homepage ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      // ),
    );
  }
}