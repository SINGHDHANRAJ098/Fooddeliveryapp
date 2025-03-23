import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/service/widget_support.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wallet",
                  style: AppWiget.HeadlineTextFeildStyle(),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xffededf8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/wallet.png",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Wallet",
                                  style: AppWiget.boldTextFeildStyle(),
                                ),
                                Text(
                                  "\$0.00",
                                  style: AppWiget.HeadlineTextFeildStyle(),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black45, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "\$100",
                            style: AppWiget.priceTextFeildStyle(),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black45, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "\$150",
                            style: AppWiget.priceTextFeildStyle(),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(color: Colors.black45, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "\$200",
                            style: AppWiget.priceTextFeildStyle(),
                          )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    height: 50,
                    margin: EdgeInsets.only(left: 20.0,right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Color(0xffef2b39),borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Add Money",
                        style: AppWiget.boldwhiteTextFeildStyle(),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
