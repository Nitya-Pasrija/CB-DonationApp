import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Color.fromRGBO(62, 39, 35, 1),
        leading: Container(
          child: Image(
            image: AssetImage('assets/5.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_rounded),
            onPressed: () {},
            iconSize: 40.0,
          ),
        ],
      ),
    );
  }
}