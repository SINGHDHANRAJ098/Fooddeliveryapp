import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/service/widget_support.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Orders",
                  style: AppWiget.HeadlineTextFeildStyle(),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffececf8),
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_city,
                                    color: Color(0xffef2b39),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "Near Market",
                                    style: AppWiget.SimpleTextFeildStyle(),
                                  )
                                ],
                              ),
                              Divider(),
                              Row(

                                children: [
                                  Image.asset(
                                    "images/burger1.png",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 22.0,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cheese Burger",
                                        style: AppWiget.boldTextFeildStyle(),
                                      ),
                                      SizedBox(height: 5.0),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons
                                                .production_quantity_limits_outlined,
                                            color: Color(0xffef2b39),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "4",
                                            style:
                                                AppWiget.boldTextFeildStyle(),
                                          ),
                                          SizedBox(width: 30.0,),
                                          Icon(
                                            Icons
                                                .monetization_on,
                                            color: Color(0xffef2b39),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "\$200",
                                            style:

                                            AppWiget.boldTextFeildStyle(),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5.0,),
                                      Text("pending!!!",style: TextStyle(color: Color(0xffef2b39),fontSize: 20.0,fontWeight: FontWeight.bold),)
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
