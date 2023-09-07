import 'dart:convert';

import 'package:http/http.dart';
import 'package:rest_api/model/info.dart';

import '../widget/listview.dart';

class ApiService{
  final endpoint ="https://reqres.in/api/users?page=2";
  Future<List<Info>> getArticle() async{
    Response response=await get(Uri.parse(endpoint));
    if(response.statusCode==200)
    {
      Map<String,dynamic> json= jsonDecode(response.body);
      List<dynamic> body=json['data'];
      List<Info> article=body.map((dynamic item) => Info.fromJson(item)).toList();
      return article;
    }
    else
    {
      throw "Data not Fetch";
    }
  }
}