import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/pages/signup.dart';

import '../service/widget_support.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2.5,
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffffefbf),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              child: Column(children: [
                Image.asset(
                  "images/pan.png",
                  height: 180,
                  fit: BoxFit.fill,
                  width: 240,
                ),
                Image.asset(
                  "images/logo.png",
                  width: 150,
                  height: 60,
                  fit: BoxFit.cover,
                )
              ]),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.2,
                  left: 20.0,
                  right: 20.0),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height / 1.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Center(
                        child: Text(
                          "logIn",
                          style: AppWiget.HeadlineTextFeildStyle(),
                        ),
                      ),
                   SizedBox(height: 20.0,),
                      Text(
                        "Email",
                        style: AppWiget.SignupTextFeildStyle(),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffececf8),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Email",
                              prefixIcon: Icon(Icons.mail)),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

                      Text(
                        "Password",
                        style: AppWiget.SignupTextFeildStyle(),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xffececf8),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Your Password",
                              prefixIcon: Icon(Icons.password)),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot Password?",style:AppWiget.SimpleTextFeildStyle() ,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Color(0xffef2b39),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                                "Log In",
                                style: AppWiget.boldwhiteTextFeildStyle(),
                              )),

                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text("Don't have an account?",style: AppWiget.SimpleTextFeildStyle(),),
                          SizedBox(width: 10.0,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>Signup()));
                            },
                              child: Text("SignUp",style: AppWiget.boldTextFeildStyle(),))
                        ],)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
