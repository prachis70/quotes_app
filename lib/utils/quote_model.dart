import 'package:flutter/material.dart';

class QuoteModel
{
  String? author;
  String? quote;
  String? img;

  List <QuoteModel> quoteModelist=[];

  QuoteModel({this.author,this.quote});

  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote']);
  }
  QuoteModel.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
    {
      quoteModelist.add(QuoteModel.fromQuotes(l1[i]));
    }
  }
}
List img=[
  {
    'img':'assets/p1.png',
  },
  {
    'img':'assets/p2.jpg',
  },
  {
    'img':' assets/p3.jpeg',
  },
  {
    'img':' assets/p4.jpeg',
  },
  {
    'img':' assets/p5.jpeg',
  },
  {
    'img':' assets/p6.jpeg',
  },
  {
    'img':' assets/p7.jpeg',
  },
  {
    'img':' assets/p8.jpeg',
  },
  {
    'img':' assets/p9.jpeg',
  },
  {
    'img':' assets/p10.jpeg',
  },
  {
    'img':' assets/p11.jpeg',
  },
  {
    'img':' assets/p12.jpeg',
  },
  {
    'img':' assets/p13.jpeg',
  },
  {
    'img':' assets/p14.jpeg',
  },
  {
    'img':' assets/p15.jpeg',
  },
  {
    'img':' assets/p16.jpeg',
  },
  {
    'img':' assets/p17.jpg',
  },
  {
    'img':' assets/p18.jpeg',
  },

];