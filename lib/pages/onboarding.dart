import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/service/widget_support.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Image.asset("images/onboard.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              "The Fastest\n Food Delivery",
              textAlign: TextAlign.center,
              style: AppWiget.HeadlineTextFeildStyle(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Craving something delicious?\n Order now and your favorites\n delivered fast",
              textAlign: TextAlign.center,
              style: AppWiget.SimpleTextFeildStyle(),
            ),
            SizedBox(
              height: 33,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Color(0xff8c592a),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
