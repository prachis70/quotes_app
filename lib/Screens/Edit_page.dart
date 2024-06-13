import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/Categoury_Page.dart';
import 'package:quotes_app/Screens/Motivational_quotes.dart';
import 'package:quotes_app/utils/Quote_Data_List.dart';

class Edit_page extends StatefulWidget {
  const Edit_page({super.key});

  @override
  State<Edit_page> createState() => _Edit_pageState();
}

class _Edit_pageState extends State<Edit_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Edit_page',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 680,
              width: double.infinity,
              color: Colors.blueGrey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 600,
                    width: double.infinity,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                       image: DecorationImage(image: AssetImage(images[select]),fit: BoxFit.cover)
                    ),
                    alignment: Alignment.center,
                    child: RichText(text: TextSpan(children: [
                      TextSpan(text: '${quotes[ch][select]['quote']}',style: TextStyle(color: Colors.white,fontSize: 25),),
                      TextSpan(text: '\n\n  -${quotes[ch][select]['author']}',style: TextStyle(color: Colors.white,fontSize: 25),)

                    ]),),
                  ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {

              },icon: Icon(Icons.save,color: Colors.white,size: 30,),),
              IconButton(onPressed: () {
              },icon:Icon(Icons.share,color: Colors.white,size: 30,),),
            ],
          ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
