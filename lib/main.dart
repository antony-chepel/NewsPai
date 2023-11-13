import 'package:flutter/material.dart';
import 'package:news_api/Screens/main_screen.dart';
import 'package:news_api/api_service/api_service.dart';
import 'package:news_api/model/articles_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ServiceApi client = ServiceApi();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueAccent[100],
        appBar: AppBar(
          title: Text('News', style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
        ),
        body: FutureBuilder(
           future: client.getArticle(),
            builder: (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
             if(snapshot.hasData){
               List<Articles>? articles = snapshot.data;

               return ListView.builder(
                   itemCount:  articles!.length,
                   itemBuilder: (context,index) =>
                      MainScreen(articles[index],context),);
             }
             return Center(
               child: CircularProgressIndicator(color: Colors.white,),
             );


        }
        ),
      )
    );
  }
}


