import 'package:news_api/model/articles_model.dart';

import 'dart:convert';
import 'package:http/http.dart';

class ServiceApi{
  final endpointUrl = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=848d53bb52fa4bc38d62e0e17896a461";

  Future<List<Articles>> getArticle() async{
    var newsModel = null;

    try {
      Response res = await get(Uri.parse(endpointUrl));
      if(res.statusCode == 200){
        Map<String,dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json["articles"];
        List<Articles> newsModel = body.map((dynamic item) => Articles.fromJson(item)).toList();
        return newsModel;
      }
    } on Exception catch (e) {
      return newsModel;

    }
    return getArticle();

  }

}