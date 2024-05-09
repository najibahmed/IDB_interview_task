import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idb_interview_task/constants/colors.dart';
import 'controllers/theme_controller.dart';
import 'screens/bookPage/bookPage.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeController.isDarkMode.value ? ThemeData.dark() :  ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:CustomColor.appColor),
        useMaterial3: true,
      ),
      home: const BookPage(),
    );
  }
}

