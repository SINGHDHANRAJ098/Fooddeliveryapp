import 'package:flutter/material.dart';

class AppWiget {
  static TextStyle HeadlineTextFeildStyle() {
    return TextStyle(
      color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold,
    );
  }

  static TextStyle SimpleTextFeildStyle() {
    return TextStyle(
      color: Colors.black, fontSize: 17.0,
    );
  }

  static TextStyle whiteTextFeildStyle() {
    return TextStyle(
        color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold
    );
  }
  static TextStyle boldTextFeildStyle(){
    return TextStyle(
      color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold
    );
  }

  static TextStyle priceTextFeildStyle(){
    return TextStyle(
        color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold
    );
  }
}
