import 'package:flutter/material.dart';
import 'package:personality/difficultyLevel/standard.dart';

import 'difficultyLevel/moderate.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personality Analyzer'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  child: Center(
                    child: Text(
                      'Difficulty Levels:',
                      style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => moderate()));
                },
                child: Text('Moderate'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.blue,
                  onPrimary: Colors.tealAccent,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  padding:
                      EdgeInsets.only(left: 80, right: 80, top: 15, bottom: 15),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => standard()));
                },
                child: Text('Standard'),
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  primary: Colors.blue,
                  onPrimary: Colors.tealAccent,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  padding:
                      EdgeInsets.only(left: 80, right: 80, top: 15, bottom: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
