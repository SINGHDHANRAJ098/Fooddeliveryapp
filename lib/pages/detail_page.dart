import 'package:flutter/material.dart';
import 'package:packagedeliveryapp/service/widget_support.dart';

class DetailPage extends StatefulWidget {
 String image,name, price;
 DetailPage({required this.image,required this.name,required  this.price});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity=1, totalprice=0;
  @override
  void initState() {
    totalprice=int.parse(widget.price);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color(0xffef2b39),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.arrow_back,
                    size: 30.0,
                    color: Colors.white,
                  )),
            ),
            Center(
                child: Image.asset(
              widget.image,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.contain,
            )),
            SizedBox(
              height: 20.0,
            ),
            Text(
             widget.name,
              style: AppWiget.HeadlineTextFeildStyle(),
            ),
            Text(
              "\$" +widget.price,
              style: AppWiget.priceTextFeildStyle(),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                "Indulge in the classic taste of our Cheese Pizza, made with a crispy, golden-brown crust, rich tomato sauce, and a generous layer of melty, premium mozzarella cheese. Baked to perfection, this pizza delivers the perfect balance of flavor in every bite.",
                style: AppWiget.SimpleTextFeildStyle(),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Quantity",
              style: AppWiget.SimpleTextFeildStyle(),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    quantity=quantity+1;
                    totalprice=totalprice+int.parse(widget.price);
                    setState(() {


                    });
                  },
                  child: Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xffef2b39),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  "1",
                  style: AppWiget.boldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: (){
                    if(quantity>1) {
                      quantity = quantity - 1;
                      totalprice = totalprice - int.parse(widget.price);
                      setState(() {

                      });
                    }
                  },
                  child: Material(
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xffef2b39),
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 60,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Color(0xffef2b39),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "\$"+totalprice.toString(),
                      style: AppWiget.boldwhiteTextFeildStyle(),
                    )),
                  ),
                ),
                SizedBox(width: 30.0,),
                Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 70,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          "ORDER NOW",
                          style: AppWiget.whiteTextFeildStyle(),
                        )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
