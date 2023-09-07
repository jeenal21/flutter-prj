import 'package:news_api/model/articals.dart';
import 'package:flutter/material.dart';
class NewsDetails extends StatelessWidget {
  Article article;
  NewsDetails({Key? key,required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('${article.title}'),
    );
  }
}
