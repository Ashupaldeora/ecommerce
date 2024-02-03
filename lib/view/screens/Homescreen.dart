import 'package:ecommerce/Utils/headphones.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
                  height: height * 0.09,
                  width: width,
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
                      SizedBox(
                        width: width * 0.03,
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
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 15,
                                  spreadRadius: 3,
                                  offset: const Offset(0, 5))
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
                      const SizedBox(
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
                const SizedBox(
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
                    const SizedBox(
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
                const SizedBox(
                  height: 10,
                ),
                //Containers of brands
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 7,
                      ),
                      brandContainer(
                          brandName: Brands[0]['name'],
                          height: height,
                          width: width,
                          image: Brands[0]['image'],
                          imageHeight: height,
                          imagepercentHeight: 0.078),
                      brandContainer(
                          brandName: Brands[1]['name'],
                          height: height,
                          width: width,
                          image: Brands[1]['image'],
                          // imageHeight: 40,
                          upperSidebox: 14,
                          lowerSidebox: 16,
                          imageHeight: height,
                          imagepercentHeight: 0.044),
                      brandContainer(
                          brandName: Brands[2]['name'],
                          height: height,
                          width: width,
                          image: Brands[2]['image'],
                          // imageHeight: 70,
                          imageHeight: height,
                          imagepercentHeight: 0.078),
                      brandContainer(
                          brandName: Brands[3]['name'],
                          height: height,
                          width: width,
                          image: Brands[3]['image'],
                          // imageHeight: 55,
                          upperSidebox: 8,
                          lowerSidebox: 5,
                          imageHeight: height,
                          imagepercentHeight: 0.062),
                      SizedBox(
                        width: width * 0.045,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                //POPULAR , DISCOUNT
                Container(
                    height: 70,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 21,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            category(
                                categoryName: "Popular",
                                Colors: Colors.grey.shade800),
                            const SizedBox(
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
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            category(
                                categoryName: "Discount",
                                Colors: Colors.grey.shade500),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            category(
                                categoryName: "Exclusive",
                                Colors: Colors.grey.shade500),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        )
                      ],
                    )),
                //first product row of containers
                Row(
                  children: [
                    productContainers(
                        index: 0,
                        discount: details[0]['discount'],
                        height: 150,
                        containerHeight: height,
                        containerWidth: width),
                    productContainers(
                        index: 1,
                        discount: details[1]['discount'],
                        height: 111,
                        containerHeight: height,
                        containerWidth: width),
                  ],
                ),
                // const SizedBox(
                //   height: 150,
                // ),
                const SizedBox(
                  height: 10,
                ),

                namePrice(
                    firstitemName: details[0]['name'],
                    firstitemPrice: details[0]['price'],
                    seconditemName: details[1]['name'],
                    seconditemPrice: details[1]['price']),
                const SizedBox(
                  height: 25,
                ),
                //Second product row of conatiners
                Row(
                  children: [
                    productContainers(
                        index: 2,
                        discount: details[2]['discount'],
                        height: 130.5,
                        containerHeight: height,
                        containerWidth: width),
                    productContainers(
                        index: 3,
                        discount: details[3]['discount'],
                        height: 107,
                        containerHeight: height,
                        containerWidth: width),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
                namePrice(
                    firstitemName: details[2]['name'],
                    firstitemPrice: details[2]['price'],
                    seconditemName: details[3]['name'],
                    seconditemPrice: details[3]['price']),
                // Row(
                //   children: [
                //     productContainers(
                //         index: 0,
                //         discount: details[0]['discount'],
                //         containerHeight: height,
                //         containerWidth: width,
                //         height: 150),
                //     productContainers(
                //         index: 1,
                //         discount: details[1]['discount'],
                //         containerHeight: height,
                //         containerWidth: width,
                //         height: 111)
                //   ],
                // ),
                // copy change
                Row(
                  children: [
                    productContainers(
                        index: 0,
                        discount: details[0]['discount'],
                        height: 150,
                        containerHeight: height,
                        containerWidth: width),
                    productContainers(
                        index: 1,
                        discount: details[1]['discount'],
                        height: 111,
                        containerHeight: height,
                        containerWidth: width),
                  ],
                ),
                // const SizedBox(
                //   height: 150,
                // ),
                const SizedBox(
                  height: 10,
                ),

                namePrice(
                    firstitemName: details[0]['name'],
                    firstitemPrice: details[0]['price'],
                    seconditemName: details[1]['name'],
                    seconditemPrice: details[1]['price']),
                const SizedBox(
                  height: 25,
                ),
                //Second product row of conatiners
                Row(
                  children: [
                    productContainers(
                        index: 2,
                        discount: details[2]['discount'],
                        height: 130.5,
                        containerHeight: height,
                        containerWidth: width),
                    productContainers(
                        index: 3,
                        discount: details[3]['discount'],
                        height: 107,
                        containerHeight: height,
                        containerWidth: width),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
                namePrice(
                    firstitemName: details[2]['name'],
                    firstitemPrice: details[2]['price'],
                    seconditemName: details[3]['name'],
                    seconditemPrice: details[3]['price']),
                Row(
                  children: [
                    productContainers(
                        index: 0,
                        discount: details[0]['discount'],
                        containerHeight: height,
                        containerWidth: width,
                        height: 150),
                    productContainers(
                        index: 1,
                        discount: details[1]['discount'],
                        containerHeight: height,
                        containerWidth: width,
                        height: 111)
                  ],
                ),
                namePrice(
                    firstitemName: details[2]['name'],
                    firstitemPrice: details[2]['price'],
                    seconditemName: details[3]['name'],
                    seconditemPrice: details[3]['price']),
                Row(
                  children: [
                    productContainers(
                        index: 0,
                        discount: details[0]['discount'],
                        containerHeight: height,
                        containerWidth: width,
                        height: 150),
                    productContainers(
                        index: 1,
                        discount: details[1]['discount'],
                        containerHeight: height,
                        containerWidth: width,
                        height: 111)
                  ],
                ),
                namePrice(
                    firstitemName: details[2]['name'],
                    firstitemPrice: details[2]['price'],
                    seconditemName: details[3]['name'],
                    seconditemPrice: details[3]['price']),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Custom widgets
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

//Product container
Widget productContainers(
    {required int index,
    required String discount,
    double? height,
    required double containerHeight,
    required double containerWidth}) {
  return Container(
    margin: const EdgeInsets.only(left: 21),
    height: containerHeight * 0.22,
    width: containerWidth * 0.425,
    decoration: BoxDecoration(
        color: const Color(0xffE3E5E9),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 21.5,
        ),
        Image.asset(
          details[index]['image'],
          height: height,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 120),
              height: 18,
              width: 40,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xffFED16A),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10))),
              child: Text(
                "$discount% OFF",
                style: const TextStyle(
                    fontSize: 7,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        )
      ],
    ),
    // child: Image.asset(),
  );
}

Widget brandContainer(
    {required String brandName,
    required double height,
    required double width,
    required String image,
    double? upperSidebox,
    double? lowerSidebox,
    required double imageHeight,
    required double imagepercentHeight}) {
  return Container(
    margin: const EdgeInsets.only(left: 10),
    height: height * 0.1105,
    width: width * 0.25,
    decoration: BoxDecoration(
        color: const Color(0xffE3E5E9),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: upperSidebox,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '$image',
              height: imageHeight * imagepercentHeight,
              fit: BoxFit.cover,
              color: Colors.grey.shade800,
            ),
          ],
        ),
        SizedBox(
          height: lowerSidebox,
        ),
        itemName("$brandName"),
      ],
    ),
  );
}

Widget namePrice(
    {required String firstitemName,
    required String firstitemPrice,
    required String seconditemName,
    required String seconditemPrice}) {
  return Row(
    children: [
      const SizedBox(
        width: 21.5,
      ),
      Column(
        children: [
          Text(
            firstitemName,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 17,
                color: Colors.grey.shade700,
                letterSpacing: -0.5),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 72),
            decoration: BoxDecoration(color: Colors.transparent),
            child: Text(
              firstitemPrice,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Colors.grey.shade800,
                  letterSpacing: -0.5),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 60),
            child: Text(
              seconditemName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  fontStyle: FontStyle.normal,
                  color: Colors.grey.shade700,
                  letterSpacing: -0.5),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8),
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Text(
              seconditemPrice,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Colors.grey.shade800,
                  letterSpacing: -0.5),
            ),
          ),
        ],
      )
    ],
  );
}
