import 'package:extra_newsapi/widget/newslistview.dart';
import 'package:flutter/material.dart';
import 'package:extra_newsapi/model/apiService.dart';
import 'package:extra_newsapi/model/articals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
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
      appBar: AppBar(title: Text('news app'),),
      body: FutureBuilder(
          future:ApiService().getArticle(),
          builder: (BuildContext context,AsyncSnapshot<List<Article>> snapshot)
          {
            if (snapshot.hasData)
            {
              return NewsListView(articles: snapshot.data!);
            };
            return Center(child: CircularProgressIndicator());
          }
      ),
    );

  }
}
