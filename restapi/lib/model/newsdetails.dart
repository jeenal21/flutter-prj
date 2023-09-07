import 'package:flutter/material.dart';
import 'package:restapi/model/information.dart';


class NewsDetails extends StatelessWidget {
  Information information;
  NewsDetails({Key? key,required this.information}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Image.network ('${information.avatar}',),
              margin: EdgeInsets.all(50),

            ),
            Text('${information.email}',),
            Text('${information.first_name}',),
            Text('${information.last_name}',),
          ],
        )


    )  ;
  }
}