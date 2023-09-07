import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiKlcState();
}

class _BmiKlcState extends State<Bmi> {
  final TextEditingController _height= new TextEditingController();
  final TextEditingController _weight= new TextEditingController();

  String _result = '';

  void calculatebmi() {
    double height = double.parse(_height.text) / 100;
    double weight = double.parse(_weight.text);
    double heightSquare = height * height;
    double result = weight / heightSquare;
    String resultText = 'Your BMI is ${result.toStringAsFixed(2)}';
    if (result < 18.5) {
      resultText += '\n\t Underweight';
    } else if (result < 25) {
      resultText += '\n\t Normal weight';
    } else if (result < 30) {
      resultText += '\n\t Overweight';
    } else {
      resultText += '\n\t Obese';
    }

    setState(() {
      _result = resultText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Body Mass Index(BMI) -- Calculator'),
          backgroundColor: Colors.pink
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            Text(
                "Enter your Hight:" ,textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 19,
              color: Colors.lightGreen,
            ),
            ),
            new TextFormField(
              controller:_height,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: 'Height(In miter)',
                icon:new Icon(Icons.trending_up_outlined),
               ),
            ),
            Text(
              "Enter your Weight:" ,textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 19,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            new TextFormField(
              controller: _weight,
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(labelText: 'Weight(In Kg)',
                icon:new Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculatebmi,
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                textStyle: TextStyle(fontSize: 20),
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Calculate'),
            ),
            SizedBox(height: 15),
            Text(
              _result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),

      ),
    );
  }
}