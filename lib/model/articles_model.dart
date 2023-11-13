import 'source_model.dart';
class Articles{
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  Articles({required this.source, required this.author,required this.title, required this.description, required this.url,
    required this.urlToImage, required this.publishedAt,required this.content});

  factory Articles.fromJson(Map<String, dynamic > json) => Articles(
      source : Source.fromJson(json["source"]),
      author : json["author"],
      title : json["title"],
      description : json["description"],
      url : json["url"],
      urlToImage : json["urlToImage"],
      publishedAt : DateTime.parse(json["publishedAt"]),
      content : json["content"]
  );
}