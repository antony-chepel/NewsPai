import 'package:flutter/material.dart';
import 'package:news_api/model/articles_model.dart';

class DetailPage extends StatelessWidget {
  final Articles articles;

  DetailPage({required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(title: Text(articles.title),),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
              children: [
                Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(articles.urlToImage,),fit: BoxFit.fill

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
                  child: Text(articles.source.name, style: TextStyle(fontSize: 15.0, color: Colors.white),textAlign: TextAlign.center,),
                ),
                SizedBox(height: 8.0,),
                Text(articles.title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,color: Colors.black,), textAlign: TextAlign.center),
                SizedBox(height: 16.0,),
                Text(articles.description, style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w300,color: Colors.black), textAlign: TextAlign.start,),
                SizedBox(height: 16.0,),
                Align(alignment: Alignment.bottomRight,
                    child: Text(articles.author, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400,color: Colors.black), textAlign: TextAlign.end,)),


              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
