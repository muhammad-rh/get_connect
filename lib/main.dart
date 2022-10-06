import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_connect/bindings.dart';
import 'package:get_connect/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBindings(),
      home: const HomePage(),
    );
  }
}
