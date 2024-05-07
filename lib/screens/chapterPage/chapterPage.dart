import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idb_interview_task/screens/detailsPage/details_Pagee.dart';
import 'package:idb_interview_task/screens/detailsPage/details_page.dart';

import '../../constants/colors.dart';
import '../../constants/fontFamily.dart';

class ChapterPage extends StatefulWidget {
  const ChapterPage({
    super.key,
  });

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "আল হাদিস",
              style: TextStyle(fontFamily: FontFamilyBangla, fontSize: 15),
            ),
            Text(
              "আল হাদিস",
              style: TextStyle(fontFamily: FontFamilyBangla, fontSize: 12),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            listItem(),
          ],
        ),
      ),
    );
  }

  Padding listItem() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Get.to(DetailsPage());
        },
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.50),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: Container(
                height: 40,
                width: 40,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/hexShape.png',
                      fit: BoxFit.cover,
                    ),
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
          ]),
        ),
      ),
    );
  }
}
