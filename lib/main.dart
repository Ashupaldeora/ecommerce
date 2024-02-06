import 'package:ecommerce/Utils/headphones.dart';
import 'package:ecommerce/view/screens/Homescreen.dart';
import 'package:ecommerce/view/screens/productscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent,
    statusBarColor: Color(0xffF4F6F8),
  ));
  runApp(app());
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: productscreen(),
    );
  }
}
