import 'package:flutter/material.dart';

import '../../Utils/colors.dart';

class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _State();
}

class _State extends State<productscreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF4F6F8),
        body: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.transparent,
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.pink,
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: width * 0.03, top: height * 0.02),
                            child: Icon(
                              Icons.arrow_back,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                right: width * 0.03, top: height * 0.02),
                            child: Icon(
                              Icons.shopping_bag_outlined,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      Stack(children: [
                        Container(
                          height: 430,
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 410,
                            width: 360,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(190),
                              color: Color(0xff234878),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 406,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(174),
                                    color: Color(0xffF4F6F8),
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/Product-images/beats-noice-cancelling-headphones.png',
                                        fit: BoxFit.cover,
                                        height: 350,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            top: 397,
                            left: 175,
                            child: Container(
                                height: 22,
                                width: 22,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Color(0xffFED168),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: Color(0xff11417D),
                                      borderRadius: BorderRadius.circular(50)),
                                )))
                      ]),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        height: 130,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Solo Pro",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Colors.grey.shade800),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Noise Cancelling Wireless\nHeadphones",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 27,
                                      color: Colors.grey.shade900),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  bgc[0] = insidecontainer;

                                  bgc[1] = secondcolor;
                                  bgc[2] = thirdcolor;
                                  bgc[3] = fourthcolor;
                                });
                              },
                              child: colorcontainers(firstcolor, bgc[0])),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  bgc[1] = insidecontainer;
                                  bgc[0] = firstcolor;
                                  bgc[2] = thirdcolor;
                                  bgc[3] = fourthcolor;
                                });
                              },
                              child: colorcontainers(secondcolor, bgc[1])),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  bgc[2] = insidecontainer;
                                  bgc[0] = firstcolor;
                                  bgc[1] = secondcolor;
                                  bgc[3] = fourthcolor;
                                });
                              },
                              child: colorcontainers(thirdcolor, bgc[2])),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  bgc[3] = insidecontainer;
                                  bgc[0] = firstcolor;
                                  bgc[1] = secondcolor;
                                  bgc[2] = thirdcolor;
                                });
                              },
                              child: colorcontainers(fourthcolor, bgc[3])),
                        ],
                      )
                    ]),
                  ))
              // bottom container
            ],
          ),
        ),
      ),
    );
  }
}

Color insidecontainer = Colors.white;
Widget colorcontainers(Color color, Color changer) {
  return Container(
      height: 25,
      width: 25,
      margin: EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(50)),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
            color: changer, borderRadius: BorderRadius.circular(50)),
      ));
}
