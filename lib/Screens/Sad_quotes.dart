import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/Quote_Data_List.dart';

import '../utils/Quote_Modal.dart';
QuoteModel? quoteModel;


class SadQuotes extends StatefulWidget {
  const SadQuotes({super.key});


  @override
  State<SadQuotes> createState() => _SadQuotesState();
}


class _SadQuotesState extends State<SadQuotes> {
  @override
  void initState()
  {
    setState(() {

    });
    quoteModel=QuoteModel.toList(loveQuotes);
    super.initState();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('SadQuotes..😞',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black)),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  xh = !xh;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(xh ? Icons.list_alt : Icons.grid_3x3),
              ))
        ],
      ),
      body: (xh)
          ? GestureDetector(onTap: () {
        Navigator.of(context).pushNamed('/ed');
      },
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 9 / 16),
          itemBuilder: (context, index) => Card(
            color: colorList[index % colorList.length],
            child: ListTile(
              title: Text(quoteModel!.quoteModelist[index].love!),
              // subtitle: Text(quoteModel!.quoteModelist[index].author!),
            ),
          ),
        ),
      )
          : ListView.builder(
          itemBuilder: (context, index) => Card(
            color: colorList[index % colorList.length],
            child: Column(children: [
              ListTile(
                title: Text(quoteModel!.quoteModelist[index].love!),

                // Text(quoteModel!.quoteModelist[index].author!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              )
            ],),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            no++;
          });
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelist.length);

          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: colorList[x % colorList.length],
                // title: Text(quoteModel!.quoteModelist[x].author!),
                content: Text(quoteModel!.quoteModelist[x].love!),
                actions: [
                  TextButton(
                    onPressed: () {},
                    child: Text('save'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('back'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}
int no=0;