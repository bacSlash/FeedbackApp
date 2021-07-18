import 'package:flutter/material.dart';
import 'package:feedback_app/final_screen.dart';

class SixthPage extends StatefulWidget {
  int value;
  SixthPage({required this.value});

  @override
  _SixthPageState createState() => _SixthPageState(value);
}

class _SixthPageState extends State<SixthPage> {
  int value;
  _SixthPageState(this.value);

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
              'Question 6',
              style: TextStyle(
                fontSize: 17.5,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 35.0),
            Text(
              'How likely are you',
              style: TextStyle(
                fontSize: 17.5,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'to recommend us to your friends?',
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
                MaterialPageRoute(builder: (context) => FinalPage(value: (_sliderval + value))),
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