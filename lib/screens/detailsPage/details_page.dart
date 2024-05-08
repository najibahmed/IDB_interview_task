import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:idb_interview_task/constants/colors.dart';
import 'package:idb_interview_task/constants/fontFamily.dart';
import 'package:idb_interview_task/controllers/detailsController.dart';

import 'package:idb_interview_task/models/section_model.dart';

import '../../custom widget/hadith_card.dart';
import '../../models/book_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final detailsController = Get.put(DetailsController());
    BookModel book = Get.arguments;

    return Scaffold(
        backgroundColor: CustomColor.appColor,
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 60,
              backgroundColor: CustomColor.appColor,
              floating: true,
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${book.title}",
                      style: TextStyle(
                          fontFamily: FontFamilyBangla,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  SizedBox(
                    height: 6,
                  ),
                  // Text("${chapter.title}",
                  //     style: TextStyle(
                  //         fontFamily: FontFamilyBangla,
                  //         fontSize: 14,
                  //         color: Colors.white.withOpacity(.85),
                  //         fontWeight: FontWeight.w200)),
                ],
              ),
              leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                )
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: Obx(
                  () => Column(
                      children: List.generate(
                          detailsController.sectionList.length, (index) {
                    var section = detailsController.sectionList[index];
                    return sectionHadithCard(sectionModel: section);
                  }).toList()),
                ),
              )
            ]))
          ],
        )));
  }
}

class sectionHadithCard extends StatelessWidget {
  SectionModel sectionModel;
  sectionHadithCard({
    required this.sectionModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final detailsController = Get.put(DetailsController());
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
            child: selctionCard()),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Obx(
            () => Column(
                children:
                    List.generate(
                        detailsController.hadithList.length, (index){
              var hadithModel = detailsController.hadithList[index];
              if (sectionModel.sectionId == hadithModel.sectionId) {
                return HadithCard(hadithModel: hadithModel);
              }
              return Container();
            })),
          ),
          // child: ListView.builder(
          //     itemBuilder: (context, index) {
          //     var hadithModel=detailsController.hadithList[index];
          //       if(sectionModel.sectionId==hadithModel.sectionId){
          //         return HadithCard(hadithModel: hadithModel);
          //       }
          //     },
          // )
        ),
      ],
    );
  }

  Card selctionCard() {
    return Card(
        elevation: 2,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 20,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: ' ${sectionModel.number} ',
                            style: TextStyle(
                                color: CustomColor.appColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text: '${sectionModel.title}',
                          style: TextStyle(
                              fontFamily: FontFamilyBangla,
                              color: Colors.black,
                              fontSize: 16,
                              overflow: TextOverflow.visible),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Text(
                    "${sectionModel.preface}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: FontFamilyBangla,
                        fontSize: 16,
                        overflow: TextOverflow.visible),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
