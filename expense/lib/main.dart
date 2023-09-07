import 'package:expense/modules/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> transactions = [
    Transaction(id: '1', title: 'goa trip', amount: 30000, date: DateTime.now()),
    Transaction(id: '2', title: 'karnataka trip', amount: 40000, date: DateTime.now()),
  ];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    setState(() {
      transactions.add(Transaction(
        id: (transactions.length + 1).toString(),
        title: enteredTitle,
        amount: enteredAmount,
        date: DateTime.now(),
        description:enteredTitle,
      ));
    });

    _titleController.clear();
    _amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Application of Expenses'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
               hintText: 'title'
              ),
              controller: _titleController,
            ),
          ),
         /*TextFormField(
          controller: const InputDecoration(

          ),*/
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Amount Of Expense',
              ),
              controller: _amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
          ),


          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 4,
                    child: Column(
                      children:[
                      Text('${transactions[index].id}'),
                        Text('${transactions[index].title}'),
                        Text('${DateFormat.yMMMd().format(transactions[index].date)}'),
                        Text('${transactions[index].amount.toString()}'),
                        Text('${transactions[index].description}'),
                      ]


                    )

                );
              },
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                  primary:Colors.indigo,
                  elevation: 20,
                  shadowColor: Colors.amber,
                ),
                onPressed: _submitData,
                child: const Text('Submit'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}