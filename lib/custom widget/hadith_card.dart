import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/fontFamily.dart';
import '../controllers/detailsController.dart';
import '../models/hadith_model.dart';
import 'helper_functions.dart';

class HadithCard extends StatelessWidget {
  HadithModel hadithModel;
  HadithCard({
    super.key,
    required this.hadithModel,
  });

  @override
  Widget build(BuildContext context) {
    final detailsController = Get.put(DetailsController());
    return Card(
        elevation: 3,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200,
          ),
          child: Container(
            // height: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
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
                        const Text("সহিহ বুখারী ",
                            style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Colors.black87)),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                            "হাদিসঃ ${englishToBanglaNumber("${hadithModel.hadithId}")}",
                            style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 18,
                                color: CustomColor.appColor,
                                fontWeight: FontWeight.w200)),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                color: CustomColor.appColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text("${hadithModel.grade}",
                                  style: TextStyle(
                                      fontFamily: FontFamilyBangla,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                      color: Colors.white)),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    )
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8),
                    child: Container(
                      child: Obx(()=>
                        Text(
                          detailsController.showArabic.value
                                  ? detailsController.showJoborJer.value
                                  ? "${hadithModel.ar}"
                                  : "${hadithModel.ar_diacless}"
                              : "${hadithModel.bn}",
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize: detailsController.textSizeArabic.value,
                              fontFamily: FontFamilyArabic,
                              fontWeight: FontWeight.w400,
                              height: 2
                              // overflow: TextOverflow.visible,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8),
                    child: Obx(()=>
                          Text("${hadithModel.narrator}",
                          style: TextStyle(
                              fontFamily: FontFamilyBangla,
                              fontSize: detailsController.textSizeBangla.value,
                              color: CustomColor.appColor,
                              fontWeight: FontWeight.w200)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8),
                    child: Container(
                      child: Obx(()=>
                            Text("${hadithModel.bn}",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: detailsController.textSizeBangla.value,
                                color: Colors.black,
                                fontWeight: FontWeight.w200)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 8),
                    child: Container(
                      child: Obx(()=>
                            Text("${hadithModel.note}",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: detailsController.textSizeBangla.value,
                                color: Colors.black.withOpacity(.40),
                                fontWeight: FontWeight.w200)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
