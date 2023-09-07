import 'dart:convert';

import 'package:http/http.dart';
import 'package:extra_newsapi/model/articals.dart';
class ApiService{
  final endpoint="https://newsapi.org/v2/everything?q=tesla&from=2023-05-28&sortBy=publishedAt&apiKey=e962406e5b354dc9a30a082e770d8940";
  Future<List<Article>>getArticle() async{
    Response response=await get(Uri.parse(endpoint));
    if(response.statusCode==200)
    {
      Map<String,dynamic> json=jsonDecode(response.body);
      List<dynamic>body=json['articles'];
      List<Article>article = body.map((dynamic item) => Article.fromJson(item)).toList();
      return article;
    }
    else
    {
      throw 'data not fetch';
    }
  }
}