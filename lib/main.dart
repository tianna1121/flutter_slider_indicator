import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: myHomePage()));

class myHomePage extends StatefulWidget {
  @override
  _myHomePageState createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  double _value = 0.0;
  onChange(double value) {
    setState(() {
      _value = value;
      // debugPrint(_value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider and Indicators"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Slider(
                value: _value,
                onChanged: onChange,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: LinearProgressIndicator(
                value: _value,
                backgroundColor: Colors.redAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: CircularProgressIndicator(
                value: _value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
