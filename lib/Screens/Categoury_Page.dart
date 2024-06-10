import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/Quote_Data_List.dart';

class Catgpage extends StatefulWidget {
  const Catgpage({super.key});

  @override
  State<Catgpage> createState() => _CatgpageState();
}

class _CatgpageState extends State<Catgpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.category),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text(
          'Category_Home',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: List.generate(
            imgList.length,
            (index) => GestureDetector(onTap:() {

              Navigator.of(context).pushNamed('/mt');
              setState(() {
                Navigator.of(context).pushNamed('/love');
              });

            },child: Box1(img: imgList[index]['img'], cat: imgList[index]['cat'])),
          ),
        ),
      ),

    );
  }
}

Widget Box1({required String img, required String cat}) {
  return Padding(
    padding: const EdgeInsets.only(top: 70, left: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 150,
          width: 150,
          padding: EdgeInsets.all(100),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 2,
                color: Colors.white,
              )
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Text(
          cat,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white70,
          ),
        )
      ],
    ),
  );
}

int index = 0;
