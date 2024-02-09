import 'package:ecommerce/Utils/cartlist.dart';
import 'package:ecommerce/Utils/colors.dart';
import 'package:ecommerce/Utils/headphones.dart';
import 'package:flutter/material.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oder Details"),
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              setState(() {
                Navigator.of(context).pushNamed('/home');
                (addtocartimage.length > 0)
                    ? cartcolor = Colors.amber
                    : cartcolor = Colors.transparent;
              });
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My Cart",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              letterSpacing: -0.5),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(
                          addtocartimage.length,
                          (index) => cartcontainers(
                              addtocartimage[index],
                              addtocartname[index],
                              addtocartprice[index],
                              numberofitems[index],
                              index)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Text(
                        "Order Info",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.5),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.5),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Text(
                          "Shipping Cost",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.5),
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Text(
                          "Total",
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.5),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "\$199.00",
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "+\$10.00",
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Text(
                          "+\$209.00",
                          style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.5),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 18),
                      height: 65,
                      width: 370,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0xffFED268),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            letterSpacing: -0.5),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget cartcontainers(
      String img, String name, String price, int howmany, int index) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 130,
      width: 400,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            height: 130,
            width: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xfff4f1f1),
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              img,
              height: 100,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '${price} (-\$4.00 Tax)',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    color: Colors.grey.shade800,
                    letterSpacing: -0.5),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (howmany > 1) {
                          numberofitems[index] = --howmany;
                        }
                      });
                    },
                    overlayColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.remove,
                        size: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  Text(
                    "$howmany",
                    style: TextStyle(
                        color: Colors.grey.shade800, fontFamily: 'Poppins'),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        numberofitems[index] = ++howmany;
                      });
                    },
                    overlayColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 50),
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        addtocartimage.removeAt(index);
                        addtocartname.removeAt(index);
                        addtocartprice.removeAt(index);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.grey),
                        color: Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.delete,
                        size: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
