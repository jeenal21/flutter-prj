import 'package:flutter/material.dart';
import 'package:rest_api/model/service.dart';
import 'package:rest_api/model/info.dart';
import 'package:rest_api/widget/listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('rest App'),),
      body: FutureBuilder(
        future: ApiService().getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Info>> snapshot) {
          {
            if (snapshot.hasData)
            {
              return NewsListView(info: snapshot.data!);
            };
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}