import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idb_interview_task/controllers/bookController.dart';
import 'package:idb_interview_task/models/book_model.dart';
import 'package:idb_interview_task/screens/chapterPage/chapterPage.dart';
import 'package:idb_interview_task/screens/detailsPage/details_Pagee.dart';
import 'package:idb_interview_task/screens/detailsPage/details_page.dart';

import '../../constants/colors.dart';
import '../../constants/fontFamily.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key, });

  @override
  Widget build(BuildContext context) {
    final bookController=Get.put(BookController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("আল হাদিস",
        style: TextStyle(
          fontFamily: FontFamilyBangla
        ),),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: bookController.bookList!.length,
          itemBuilder: (context, index) {
            var book =bookController.bookList?[index];
            return listItem(book!);
          },

        ),
      ) ,
    );
  }

  Padding listItem(Books book) {
    return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                Get.to(ChapterPage());
              },
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
                        alignment: Alignment.center,
                        children: [
                          Image.asset('assets/hexShape.png',fit: BoxFit.cover,),
                          Center(
                            child: Text(
                              "B",
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
                       Text("${book.title}",
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
                        Text("${book.numberOfHadis}",
                            style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 16,
                                fontWeight: FontWeight.w100,
                                color: Colors.white)),
                          Text("হাদিস",
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