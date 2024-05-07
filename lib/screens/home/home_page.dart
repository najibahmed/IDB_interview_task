import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fontFamily.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Hadith App"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            listItem(),
          ],
        ),
      ) ,
    );
  }

  Padding listItem() {
    return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.50),
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: Stack(
                        children: [
                          Image.asset('hexShape.png',fit: BoxFit.cover,),
                          Center(
                            child: Text(
                              "1",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("সহিহ বুখারী ",
                          style: TextStyle(
                              fontFamily: FontFamilyBangla,
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87)),
                      const SizedBox(
                        height: 6,
                      ),
                      Text("হাদিসঃ ১",
                          style: TextStyle(
                              fontFamily: FontFamilyBangla,
                              fontSize: 12,
                              color: CustomColor.appColor,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("৭৫৬৩",
                            style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 16,
                                fontWeight: FontWeight.w100,
                                color: Colors.white)),
                          Text("হাদিস ",
                              style: TextStyle(
                                  fontFamily: FontFamilyBangla,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.black)),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          );
  }
}
