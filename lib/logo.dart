import 'package:flutter/material.dart';

class NextPaage extends StatefulWidget {
  const NextPaage({super.key});

  @override
  State<NextPaage> createState() => _NextPaageState();
}

class _NextPaageState extends State<NextPaage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('navigator call ')),
        body: Container(
          child: Column(
            children: [
              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'hello',
                  fillColor: Color.fromRGBO(255, 78, 108, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
