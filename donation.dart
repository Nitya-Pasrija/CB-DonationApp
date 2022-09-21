import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(
  home: Test(),
));

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Donation Drives'),
        backgroundColor: Colors.black,

      actions: <Widget> [
          const Positioned.fill(
    child: Align(
    alignment: Alignment.center,
              child: Text(
                  "Recent",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.arrow_drop_down), alignment: Alignment.centerRight)]),
        body: Center(
            child: Stack(
                children:<Widget>[
                  Container(
                      height:700,
                      width:1100,
                      child: Image.asset("""
assets/Image6.png""", fit: BoxFit.fill)),
      Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("""Old Age Home Donation
12th sept""",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.white,
                  )
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {}
                   ),
                  CupertinoButton(
                    minSize: double.minPositive,
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Container(child: Align(alignment: Alignment.bottomCenter
          children: [
            IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_drop_down)),
          ] ),

                  Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(90.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("""Old Age Home Donation
10th sept""",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white,
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 15,
                      ),
                      onPressed: () {}
                  ),
                  CupertinoButton(
                    minSize: double.minPositive,
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(165.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("""Old Age Home Donation
8th sept""",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white,
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 15,
                      ),
                      onPressed: () {}
                  ),
                  CupertinoButton(
                    minSize: double.minPositive,
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(245.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("""Old Age Home Donation
6th sept""",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.white,
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 15,
                      ),
                      onPressed: () {}
                  ),
                  CupertinoButton(
                    minSize: double.minPositive,
                    padding: EdgeInsets.zero,
                    child: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),

       ]),
      ));

  }
}