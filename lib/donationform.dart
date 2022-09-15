import 'package:flutter/material.dart';
void main()
{
  runApp(
      MaterialApp(
          home:MyRegister(),
      ),
  );
}
class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/hello.jpeg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SafeArea(
            // Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/loginbg.jpg'),fit: BoxFit.cover)),),
              child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //hello
                      Text('Donate Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Text('Create a new account',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              //border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'name',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.face, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              //border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'email',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.email, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              //border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'phone number',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.phone, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              //border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Address',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.home, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15, ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              //border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'password',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.lock, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 15, ),
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              //border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Confirm',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.lock, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 42.0),
                        child: Container(
                          padding: EdgeInsets.all(1.0),
                          decoration: BoxDecoration(gradient:LinearGradient(
                            colors: [
                              Colors.orangeAccent,
                              Colors.redAccent,
                            ],
                          ),
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                TextButton.styleFrom(
                                  primary: Colors.red,
                                );
                              },
                              child: Text('confirm',
                                style: TextStyle(color:
                                Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),)
                     
                  ]
                  )
              )
          )
      ),
    );
  }
}
