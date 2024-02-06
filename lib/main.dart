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
  runApp(productscreen());
}
