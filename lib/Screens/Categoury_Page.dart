import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/Quote_Data_List.dart';
import 'package:flutter/widgets.dart';

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
      body:SingleChildScrollView(
        child: Column(
          children: [
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Wrap(
                 children: [
                   Container(
                     height: 120,
                     width: 120,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('assets/st.jpeg'),
                       ),
                       shape: BoxShape.circle,
                       border: Border.all(color: Colors.blue),
                       boxShadow: [
                         BoxShadow(color: Colors.blue,blurRadius: 2,spreadRadius: 2),
                       ],
                     ),
                   ),
                   SizedBox(width: 10,),
                   Container(
                     height: 120,
                     width: 120,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('assets/st1.jpeg'),
                       ),
                       shape: BoxShape.circle,
                       border: Border.all(color: Colors.blue),
                         boxShadow: [
                           BoxShadow(color: Colors.blue,blurRadius: 2,spreadRadius: 2),
                         ]
                     ),
                   ),
                   SizedBox(width: 10,),
                   Container(
                     height: 120,
                     width: 120,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('assets/st2.jpeg'),
                       ),
                       shape: BoxShape.circle,
                         border: Border.all(color: Colors.blue),
                         boxShadow: [
                           BoxShadow(color: Colors.blue,blurRadius: 2,spreadRadius: 2),
                         ]
                     ),
                   ),
                   SizedBox(width: 10,),
                   Container(
                     height: 120,
                     width: 120,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('assets/st3.jpeg'),
                       ),
                       shape: BoxShape.circle,
                         border: Border.all(color: Colors.blue),
                         boxShadow: [
                           BoxShadow(color: Colors.blue,blurRadius: 2,spreadRadius: 2),
                         ]
                     ),
                   ),
                 ],
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10,bottom: 15),
              child: Container(
                height: 210,
                width: 380,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.white,spreadRadius: 2,blurRadius: 2)
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bird.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                ),
            ),
            SingleChildScrollView(
              child: Wrap(
                children: List.generate(
                  imgList.length,
                      (index) => GestureDetector(onTap:() {
                    setState(() {
                      print(index);
                      ch=index;
                      Quotes=imgList[index]['cat'];
                      Navigator.of(context).pushNamed('/mt');
                      }
                    );
                  },child: Box1(img: imgList[index]['img'], cat: imgList[index]['cat'])),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
Widget Box1({required String img, required String cat}) {
  return   Column(
    children: [
      Container(
        height: 120,
        width: 120,
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 2,
              color: Colors.white,
            )
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
        shape: BoxShape.rectangle,borderRadius: BorderRadius.circular(20)),

      ),
      SizedBox(height: 20,),
      Text(
          cat,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: Colors.white,
          ),
      ),
      SizedBox(height: 30,),
    ],
  );
}

int ch=0;
String Quotes='';