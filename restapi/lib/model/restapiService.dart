import 'dart:convert';

import 'package:http/http.dart';
import 'package:restapi/model/information.dart';

class ApiService{
  final endpoint ="https://reqres.in/api/users?page=2";
  Future<List<Information>> getArticle() async{
    Response response=await get(Uri.parse(endpoint));
    if(response.statusCode==200)
    {
      Map<String,dynamic> json= jsonDecode(response.body);
      List<dynamic> body=json['data'];
      List<Information> detail=body.map((dynamic item) => Information.fromJson(item)).toList();
      return detail;
    }
    else
    {
      throw "Data not Fetch";
    }
  }
}