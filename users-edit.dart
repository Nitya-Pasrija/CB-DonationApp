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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 85,
                child: ClipOval(
                  child: Image.asset(
                    'assets/pfp.jpeg',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Change Photo",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Spartan',
                  color: Colors.orange.shade900,
                ),
              ),
            ),
            const SizedBox(height: 24,),
            textField("Name","Jane Doe"),
            textField("Email","janedoe@xyz.com"),
            textField("Location", "Delhi"),
            textField("Phone Number","9845XXXXXX"),
            Container(
              padding: EdgeInsets.all(15.0),
              height: 50,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade700,
                    Colors.orange.shade900
                  ],
                ),
              ),
              child: Text(
                ' Save Changes',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontFamily: 'Spartan',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget textField(String title, String hint){
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: "Spartan",
              fontSize: 20,
              color: Colors.orange.shade900,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom:12),
          child: TextFormField(
            cursorColor: Colors.white,
            maxLines: 1,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueGrey.withOpacity(0.15),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.white,
                fontFamily: "Spartan",
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange,
                  )
              ),
            ),
          ),
        ),
      ],
    );
  }
}