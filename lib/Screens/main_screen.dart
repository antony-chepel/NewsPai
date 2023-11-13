import 'package:flutter/material.dart';
import 'package:news_api/Screens/detail_screen.dart';
import 'package:news_api/model/articles_model.dart';

Widget MainScreen(Articles articles, BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(articles: articles,)));
    },
    child: Container(
      margin: EdgeInsets.all(12.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,


          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(articles.urlToImage,),fit: BoxFit.cover
                  
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.indigo[400],
              borderRadius: BorderRadius.circular(5.0)

            ),
            child: Text(articles.source.name, style: TextStyle(fontSize: 15.0, color: Colors.white),),
          ),
          SizedBox(height: 8.0,),
          Text(articles.title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.black),)
        ],
      ),
    ),
    
  );


}