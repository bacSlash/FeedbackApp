import 'package:flutter/material.dart';
import 'package:feedback_app/screen_6.dart';

class FifthPage extends StatefulWidget {
  int value;
  FifthPage({required this.value});

  @override
  _FifthPageState createState() => _FifthPageState(value);
}

class _FifthPageState extends State<FifthPage> {
  int value;
  _FifthPageState(this.value);

  int _sliderval = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: Text(
          'Feedback App',
          style: TextStyle(
            fontSize: 30.0,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        elevation: 20.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question 5',
              style: TextStyle(
                fontSize: 17.5,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 35.0),
            Text(
              'How satisfied are you',
              style: TextStyle(
                fontSize: 17.5,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'with your overall experience?',
              style: TextStyle(
                fontSize: 17.5,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 35.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
              child: Slider(
                value: _sliderval.toDouble(),
                min: 1,
                max: 5,
                divisions: 4,
                activeColor: Colors.purple[300],
                inactiveColor: Colors.purple[100],
                label: _sliderval.round().toString(),
                onChanged: (value) => setState(() => this._sliderval = value.toInt()),
              ),
            ),
            SizedBox(height: 35.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SixthPage(value: (_sliderval + value))),
                );
              },
              child: Text(
                'NEXT',
                style: TextStyle(
                  letterSpacing: 2.0,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple[300]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}