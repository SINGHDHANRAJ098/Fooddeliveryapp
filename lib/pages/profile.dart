import 'package:flutter/material.dart';

import '../service/widget_support.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                  height: MediaQuery.of(context).size.height / 4.3,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffef2b39),
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.elliptical(
                              MediaQuery.of(context).size.width, 105.0))),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 6.5),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(60),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/boy.jpg",
                          height: 120,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dhanraj Singh",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.person,color: Colors.black,),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Name",style: TextStyle(
                          color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                        ),),
                        Text("Dhanraj Singh",style: TextStyle(
                            color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                        ),),

                      ],)
                    ],
                  ),
                ),


              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.email,color: Colors.black,),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email",style: TextStyle(
                              color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                          ),),
                          Text("dhanrajsingh123@gmail.com",style: TextStyle(
                              color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                          ),),

                        ],)
                    ],
                  ),
                ),


              ),
            ),  SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.description,color: Colors.black,),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Terms and Condition",style: TextStyle(
                              color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                          ),),

                        ],)
                    ],
                  ),
                ),


              ),
            ),SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.delete,color: Colors.black,),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("Delete Account",style: TextStyle(
                              color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                          ),),

                        ],)
                    ],
                  ),
                ),


              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.login_outlined,color: Colors.black,),
                      SizedBox(width: 20.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text("LogOut",style: TextStyle(
                              color: Color(0xffef2b39),fontSize: 16.0,fontWeight: FontWeight.w600
                          ),),

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
