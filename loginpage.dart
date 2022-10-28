import 'forgotpswd.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'Home_Page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg4.jpg'), fit: BoxFit.cover),
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
                      Text('Welcome Back !',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Text('Log in to continue',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                      SizedBox(height: 40),
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
                                hintText: 'Email',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.face, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
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
                                hintText: 'Password',
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white),
                                prefixIcon: Icon(Icons.lock_outline, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35,),
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
                                Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context) => Home(),),);
                              },
                              child: Text('Log in',
                                style: TextStyle(color:
                                Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),),
                      SizedBox(height: 5.0,),
                      InkWell(
                        child: Text('Forgot password ?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>fgtpswdd(),),);
                        },
                      ),
                      SizedBox(height: 25.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 125.0),
                        child: Container(
                          padding: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(gradient:LinearGradient(
                            colors: [
                              Colors.orangeAccent,
                              Colors.redAccent,
                            ],
                          ),
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                              child: Text('- Or log in with -',
                                style: TextStyle(color:
                                Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          ),
                      SizedBox(height: 25.0,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            Container(
                              height: 50,
                              width: 50,
                              // margin: EdgeInsets.all(2000.0),
                              padding: EdgeInsets.all(4.0),
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  color:Colors.white.withOpacity(0.2),
                              ),
                              child: Image.asset('assets/fbadobe.png'),
                            ),
                            SizedBox(width:20.0,),
                            Container(
                              height: 50,
                              width: 50,
                              // margin: EdgeInsets.all(2000.0),
                              padding: EdgeInsets.all(4.0),
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  color:Colors.white.withOpacity(0.2)
                              ),
                              child:Image.asset('assets/t.png'),
                            ),
                            SizedBox(width:20.0,),
                             Container(
                               height: 50,
                               width: 50,
                            //   margin: EdgeInsets.all(2000.0),
                              padding: EdgeInsets.all(4.0),
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  color:Colors.white.withOpacity(0.2)
                              ),
                              child: Image.asset('assets/githubadobe.png'),
                            ),
                            SizedBox(width:20.0,),
                            Container(
                              height: 50,
                              width: 50,
                              // margin: EdgeInsets.all(2000.0),
                              padding: EdgeInsets.all(7.0),
                              decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  color:Colors.white.withOpacity(0.2)
                              ),
                              child: Image.asset('assets/googleadobe.png'),
                            )
                          ]
                      ),
                      SizedBox(height: 80.0,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:<Widget>[
                            Text("Don't have an account ?",style: TextStyle(color: Colors.redAccent),),
                            InkWell(
                                child: Text('Create one now',style: TextStyle(color:Colors.white),),
                              onTap:(){
                                Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context)=>MyRegister(),),);
                              },
                            ),
                            ]
                      ),//not a mem
                    ],
                  )
              )
          )
      ),
    );
  }
}

