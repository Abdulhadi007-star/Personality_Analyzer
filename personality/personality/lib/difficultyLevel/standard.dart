import 'package:flutter/material.dart';

import '../report.dart';

enum options { Yes, No }
enum options1 { Yes, No }
enum options2 { LittleBit, TooMuch }
enum options3 { Yes, No }
enum options4 { Yes, No }

class standard extends StatefulWidget {
  @override
  _standardState createState() => _standardState();
}

class _standardState extends State<standard> {
  options? opt = options.Yes;
  options1? opt1 = options1.Yes;
  options2? opt2 = options2.LittleBit;
  options3? opt3 = options3.Yes;
  options4? opt4 = options4.Yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personality Analyzer Quiz'),
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
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Text(
                  'Q.No.1: Are you considerate of other people’s feelings?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: RadioListTile<options>(
                  activeColor: Colors.cyan,
                  title: const Text('Yes'),
                  value: options.Yes,
                  groupValue: opt,
                  onChanged: (options? value) {
                    setState(() {
                      opt = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: RadioListTile<options>(
                  activeColor: Colors.cyan,
                  title: const Text('No'),
                  value: options.No,
                  groupValue: opt,
                  onChanged: (options? value) {
                    setState(() {
                      opt = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Text(
                  'Q.No.2: Do you like being pushy?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: RadioListTile<options1>(
                  activeColor: Colors.cyan,
                  title: const Text('Yes'),
                  value: options1.Yes,
                  groupValue: opt1,
                  onChanged: (options1? value) {
                    setState(() {
                      opt1 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: RadioListTile<options1>(
                  activeColor: Colors.cyan,
                  title: const Text('No'),
                  value: options1.No,
                  groupValue: opt1,
                  onChanged: (options1? value) {
                    setState(() {
                      opt1 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Text(
                  'Q.No.3: How long does it take you to calm down when you’ve been angry?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: RadioListTile<options2>(
                  activeColor: Colors.cyan,
                  title: const Text('Little Bit'),
                  value: options2.LittleBit,
                  groupValue: opt2,
                  onChanged: (options2? value) {
                    setState(() {
                      opt2 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: RadioListTile<options2>(
                  activeColor: Colors.cyan,
                  title: const Text('Too Much'),
                  value: options2.TooMuch,
                  groupValue: opt2,
                  onChanged: (options2? value) {
                    setState(() {
                      opt2 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Text(
                  'Q.No.4: Are you easily fazed?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: RadioListTile<options3>(
                  activeColor: Colors.cyan,
                  title: const Text('Yes'),
                  value: options3.Yes,
                  groupValue: opt3,
                  onChanged: (options3? value) {
                    setState(() {
                      opt3 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: RadioListTile<options3>(
                  activeColor: Colors.cyan,
                  title: const Text('No'),
                  value: options3.No,
                  groupValue: opt3,
                  onChanged: (options3? value) {
                    setState(() {
                      opt3 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                child: Text(
                  'Q.No.5: Do you feel overwhelmed often?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: RadioListTile<options4>(
                  activeColor: Colors.cyan,
                  title: const Text('Yes Sometimes'),
                  value: options4.Yes,
                  groupValue: opt4,
                  onChanged: (options4? value) {
                    setState(() {
                      opt4 = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: RadioListTile<options4>(
                  activeColor: Colors.cyan,
                  title: const Text('No'),
                  value: options4.No,
                  groupValue: opt4,
                  onChanged: (options4? value) {
                    setState(() {
                      opt4 = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => report()));
                },
                child: Text('Submit'),
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
                      EdgeInsets.only(left: 50, right: 50, top: 15, bottom: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
