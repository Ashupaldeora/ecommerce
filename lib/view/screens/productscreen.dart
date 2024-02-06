import 'package:flutter/material.dart';

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
          color: Colors.pink,
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                height: 80,
                color: Colors.yellowAccent,
                child: Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
