import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
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
          body: Container(
            height: 70,
            decoration: const BoxDecoration(color: Colors.pink),
            child: Row(
              children: [
                Container(
                  width: 35,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(2, 5),
                        child: Image.asset(
                          'lib/asset/4-dots-removebg.png',
                          height: 70,
                          width: 20,
                          color: Colors.grey.shade800,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 155),
                Container(
                  height: 70,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.all_inclusive,
                        size: 35,
                        color: Colors.grey.shade800,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 110,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/asset/scan.png',
                        height: 30,
                        width: 30,
                        color: Colors.grey.shade800,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.grey.shade800,
                )
                // Image.asset(
                //   'lib/asset/bag.png',
                //   height: 25,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
