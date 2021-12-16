import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class report extends StatefulWidget {
  const report({Key? key}) : super(key: key);

  @override
  _reportState createState() => _reportState();
}

class _reportState extends State<report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analyzing Report'),
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
              SizedBox(height: 30),
              Container(
                width: 800,
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3wsY97EGJT0WkvYKYzY2WuUtiCX7rzilCPA&usqp=CAU',
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topRight,
                    colors: [
                      Colors.blue,
                      Colors.teal,
                    ],
                  ),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Text(
                  'Progress Report and Advices',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                height: 350,
                width: 800,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topRight,
                      colors: [
                        Colors.blue,
                        Colors.teal,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    border: Border.all(color: Colors.white30, width: 40)),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Advices',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n1- Bring positivity in your outlook.'
                            '\n2- Read more often and develop new interests.'
                            '\n3- Be a little fun.'
                            '\n4- Try to be confident.'
                            '\n5- Try to be optimistic.',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
