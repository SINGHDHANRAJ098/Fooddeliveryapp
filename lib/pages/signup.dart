import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/pages/bottomnav.dart';
import 'package:packagedeliveryapp/pages/login.dart';
import 'package:packagedeliveryapp/service/database.dart';
import 'package:packagedeliveryapp/service/widget_support.dart';
import 'package:random_string/random_string.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "", password = "", name = "";
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController mailcontroller = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  registration() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        email = mailcontroller.text;
        password = passwordcontroller.text;
        name = namecontroller.text;
      });

      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        // Save user details to Firestore or SharedPreferences if needed
        String Id = randomAlphaNumeric(10);
        //await DatabaseMethods().addUserDetails(name, email, Id);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.green,
          content: Text(
            "Registered Successfully",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ));

        // Navigate to the BottomNav page after successful registration
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Bottomnav()),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Password Provided is too weak",
              style: TextStyle(fontSize: 18.0),
            ),
          ));
        } else if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Text(
              "Account Already exists",
              style: TextStyle(fontSize: 18.0),
            ),
          ));
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          "Please fill all the fields",
          style: TextStyle(fontSize: 18.0),
        ),
      ));
    }
  }

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
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15.0,
                        ),
                        Center(
                          child: Text(
                            "SignUp",
                            style: AppWiget.HeadlineTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          "Name",
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
                            controller: namecontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Name",
                                prefixIcon: Icon(Icons.person)),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
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
                            controller: mailcontroller,
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
                            obscureText: true,
                            controller: passwordcontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Password",
                                prefixIcon: Icon(Icons.password)),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            registration();
                          },
                          child: Center(
                            child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xffef2b39),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: AppWiget.boldwhiteTextFeildStyle(),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: AppWiget.SimpleTextFeildStyle(),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                },
                                child: Text(
                                  "LogIn",
                                  style: AppWiget.boldTextFeildStyle(),
                                ))
                          ],
                        )
                      ],
                    ),
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



