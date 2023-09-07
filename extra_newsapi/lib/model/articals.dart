import 'dart:convert';

class Article {
  final String? author;
  final String title;
  final String? descripction;
  final String? urlToImage;
  final String publishedAT;

  Article({
     this.author,
   required  this.title,
     this .descripction,
     this .urlToImage,
    required this .publishedAT,
  });
  factory Article.fromJson(Map <String,dynamic>json){
    return Article(
      author: json["author"]==null?null:json["author"],
      title: json["title"]==null ? null:json["title"],
      descripction: json["description"]==null ? null:json["description"],
      urlToImage: json["urlToImage"]==null?null:json["urlToImage"],
      publishedAT: json["publishedAt"]==null?null:json["publishedAt"],
    );

  }
}
