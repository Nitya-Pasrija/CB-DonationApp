import 'package:flutter/material.dart';
import 'loginpage.dart';

class fgtpswdd extends StatefulWidget {
  const fgtpswdd({Key? key}) : super(key: key);


  @override
  State<fgtpswdd> createState() => _fgdpswdState();
}
class _fgdpswdState extends State<fgtpswdd> {
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
                      Text('Forgot password ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      Text('Enter your Email to reset \n         your password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 50),
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
                                hintStyle:  TextStyle(fontSize: 20.0, color: Colors.white,),
                                prefixIcon: Icon(Icons.mail_outline, color: Colors.white,),
                                //fillColor: Colors.white,
                                filled: true,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 35,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 130.0),
                        child: Container(
                         // height: 40,
                          padding: EdgeInsets.all(0.1),
                          decoration: BoxDecoration(gradient:LinearGradient(
                            colors: [
                              Colors.orangeAccent,
                              Colors.redAccent,
                            ],
                          ),
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(35)),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                TextButton.styleFrom(
                                  primary: Colors.red,
                                );
                                Navigator.push(context,
                                  MaterialPageRoute(builder:
                                      (context) => LoginPage(),),);
                              },
                              child:InkWell(
                                child: Text(' Continue ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
                                onTap: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder:
                                        (context) => LoginPage(),),);
                                },
                              ),
                            ),
                          ),
                        ),),

                      SizedBox(height: 25.0,),
                    ],
                  )
              )
          )
      ),
    );
  }
}

