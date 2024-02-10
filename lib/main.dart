import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:landing_page/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigationView(),
    ),
  );
}
