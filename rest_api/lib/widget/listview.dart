import 'package:flutter/material.dart';
import '../model/info.dart';
import '../model/detail.dart';
class NewsListView extends StatelessWidget {
  List<Info> info;
  NewsListView({Key? key,required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: info.length,
      itemBuilder: (BuildContext context, index) {

        return InkWell(
          onTap: ()
          {
            print('hello');
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>NewsDetails(information:info[index],)));

          },
          child :Column(
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network('${info[index].avatar}',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text(
                '${info[index].first_name}',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${info[index].last_name}',
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