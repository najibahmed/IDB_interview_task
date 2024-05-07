import 'package:flutter/material.dart';
import 'package:idb_interview_task/constants/colors.dart';
import 'screens/detailsPage/details_Pagee.dart';
import 'screens/detailsPage/details_page.dart';
import 'screens/home/home_page.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:CustomColor.appColor),
        useMaterial3: true,
      ),
      home: const DetailsPage(),
    );
  }
}

