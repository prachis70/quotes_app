
import 'package:flutter/material.dart';

class QuoteModel
{
  String? author;
  String? quote;
  String? Love;
  List <QuoteModel> quoteModelist=[];

  QuoteModel({this.author,this.quote,});

  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote'],Love[]);
  }


  QuoteModel.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
    {
      quoteModelist.add(QuoteModel.fromQuotes(l1[i]));
    }

  }

}
bool xh=false;
List colorList=[
 // Colors.pinkAccent,
  Colors.white,
  Colors.yellowAccent,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.teal,
  Colors.grey,
  Colors.white,
  Colors.green,
  Colors.amber,
  Colors.teal,
  Colors.grey,
];
