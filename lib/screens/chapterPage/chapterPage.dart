import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idb_interview_task/controllers/chapterController.dart';
import 'package:idb_interview_task/models/book_model.dart';
import 'package:idb_interview_task/models/chapter_model.dart';
import 'package:idb_interview_task/screens/detailsPage/details_page.dart';

import '../../constants/colors.dart';
import '../../constants/fontFamily.dart';
import '../../custom widget/helper_functions.dart';

class ChapterPage extends StatelessWidget {
  const ChapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final chapterController = Get.put(ChapterController());
    BookModel book = Get.arguments;
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
              "${book.title}",
              style: TextStyle(
                  fontFamily: FontFamilyBangla,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${englishToBanglaNumber('${book.numberOfHadis}')} টি হাদিস ",
              style: TextStyle(fontFamily: FontFamilyBangla, fontSize: 14),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: chapterController.chapterList.length,
          itemBuilder: (context, index) {
            var chapter = chapterController.chapterList[index];
            return listItem(chapter, book);
          },
        ),
      ),
    );
  }

  Padding listItem(ChapterModel chapter, BookModel book) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        child: InkWell(
          onTap: () {
            Get.to(
                arguments:  book,
                 DetailsPage(chapterModel: chapter,),transition: Transition.rightToLeft);
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
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
                          "${chapter.Id}",
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
                  Text("${chapter.title} ",
                      style: TextStyle(
                          fontFamily: FontFamilyBangla,
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Colors.black87)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text("হাদিস রেঞ্জঃ ${chapter.hadisRange}",
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
      ),
    );
  }
}
