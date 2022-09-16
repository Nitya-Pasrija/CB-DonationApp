import 'package:flutter/material.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Samridhi',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: LoginPage()
      //const MyHomePage(title: 'CB-Donation App'),
    );
  }
}