import 'package:news_api/newsdetails.dart';
import 'package:flutter/material.dart';

import '../model/articals.dart';
class NewsListView extends StatelessWidget {
  List<Article> articles;
  NewsListView({Key? key,required this.articles}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (BuildContext context, index)
      {
        return InkWell(
          onTap:()
          {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>NewsDetails(article: articles[index],)));
          },

          child: Column(
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network('${articles[index].urlToImage}',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text(
                '${articles[index].title}',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${articles[index].descripction}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }
}