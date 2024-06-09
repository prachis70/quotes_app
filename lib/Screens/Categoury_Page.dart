// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

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
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text(
          'Category_Home',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: List.generate(
            imgList.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {});
              },
              child:
                  Box1(img: imgList[index]['img'], cat: imgList[index]['cat']),
            ),
          ),
        ),
      ),
    );
  }
}

Widget Box1({required String img, required String cat}) {
  return InkWell(onTap: () {

  },
    child: Padding(
      padding: const EdgeInsets.only(top: 30,left: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 180,
            width: 180,
            padding: EdgeInsets.all(100),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(spreadRadius: 1, blurRadius: 2, color: Colors.white)
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Text(cat,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white),)
        ],
      ),
    ),
  );
}

int index = 0;
