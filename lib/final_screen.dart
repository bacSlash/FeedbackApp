import 'package:flutter/material.dart';
import 'package:feedback_app/main.dart';

class FinalPage extends StatefulWidget {
  int value;
  FinalPage({required this.value});

  @override
  _FinalPageState createState() => _FinalPageState(value);
}

class _FinalPageState extends State<FinalPage> {
  int value;
  _FinalPageState(this.value);

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
            if(value <= 10)
              Text(
                'We are sorry for your inconvenience.',
                style: TextStyle(
                  fontSize: 17.5,
                  letterSpacing: 2.0,
                  color: Colors.red,
                ),
              )
            else if(value > 10 && value <= 20)
              Text(
                'We hope to serve you better next time.',
                style: TextStyle(
                  fontSize: 17.5,
                  letterSpacing: 2.0,
                  color: Colors.yellow[700],
                ),
              )
            else
              Text(
                'We hope you come back next time.',
                style: TextStyle(
                  fontSize: 17.5,
                  letterSpacing: 2.0,
                  color: Colors.green,
                ),
              ),
            SizedBox(height: 35.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text(
                'HOME',
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