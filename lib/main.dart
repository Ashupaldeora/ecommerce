import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xffF4F6F8),
    statusBarColor: Color(0xffF4F6F8),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF4F6F8),
          body: SingleChildScrollView(
            child: Column(
              // Main column
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 90,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  //app bar made of container
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/images/4-dots-removebg.png',
                        // height: 70,
                        width: 20,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        height: 20,
                        width: 149,
                      ),
                      Icon(
                        Icons.all_inclusive,
                        size: 50,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 95,
                      ),
                      Image.asset(
                        'assets/images/scan.png',
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                        color: Colors.grey.shade800,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  //Search bar and mic
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 15,
                                  spreadRadius: 3,
                                  offset: Offset(0, 5))
                            ]),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Search here",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            const SizedBox(
                              width: 200,
                            ),
                            Icon(
                              Icons.search,
                              color: Colors.grey.shade600,
                              size: 27,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.mic_none,
                        color: Colors.grey.shade600,
                        size: 35,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                //choose brand and see all
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // SizedBox(
                    //   width: 13,
                    // ),
                    Text(
                      "Choose brand",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.5,
                          color: Colors.grey.shade800),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.5,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                //Containers of brands
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 100,
                    width: 470,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      children: [
                        //Beats
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffE3E5E9),
                              borderRadius: BorderRadius.circular(10)),
                          //Beats logo
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/beats.png',
                                    height: 70,
                                    fit: BoxFit.cover,
                                    color: Colors.grey.shade800,
                                  ),
                                ],
                              ),
                              itemName("Beats"),
                            ],
                          ),
                        ),
                        //Boat
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffE3E5E9),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 14,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/Boat.png',
                                    height: 40,
                                    fit: BoxFit.cover,
                                    color: Colors.grey.shade800,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              itemName("Boat"),
                            ],
                          ),
                        ),
                        //JBL
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffE3E5E9),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/jbl.png',
                                    height: 70,
                                    fit: BoxFit.cover,
                                    color: Colors.grey.shade800,
                                  ),
                                ],
                              ),
                              itemName("JBL"),
                            ],
                          ),
                        ),
                        //SONY
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffE3E5E9),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/sony.png',
                                    height: 55,
                                    color: Colors.grey.shade800,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              itemName("Sony"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                //POPULAR , DISCOUNT
                Container(
                    height: 70,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 21,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            category(
                                categoryName: "Popular",
                                Colors: Colors.grey.shade800),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 4,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            category(
                                categoryName: "Discount",
                                Colors: Colors.grey.shade500),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            category(
                                categoryName: "Exclusive",
                                Colors: Colors.grey.shade500),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget itemName(String brandName) {
  return Text(
    "$brandName",
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: 'Poppins',
        color: Colors.grey.shade800,
        letterSpacing: -0.5),
  );
}

Widget category({required String categoryName, required Color Colors}) {
  return Text("$categoryName",
      style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          color: Colors,
          fontSize: 18,
          letterSpacing: -0.5));
}
