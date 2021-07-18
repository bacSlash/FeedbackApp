import 'package:flutter/material.dart';
import 'package:feedback_app/screen_one.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
              'Welcome to my Feedback App',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              'Click below to start',
              style: TextStyle(
                fontSize: 17.5,
                letterSpacing: 2.0,
                color: Colors.purple[300],
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: Text(
                'START',
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