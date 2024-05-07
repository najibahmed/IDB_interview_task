import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:idb_interview_task/constants/colors.dart';
import 'package:idb_interview_task/constants/fontFamily.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text("সহিহ বুখারী ",
                      style: TextStyle(
                          fontFamily: FontFamilyBangla,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                  SizedBox(
                    height: 6,
                  ),
                  Text("ওহীর সূচনা অধ্যায় ",
                      style: TextStyle(
                          fontFamily: FontFamilyBangla,
                          fontSize: 14,
                          color: Colors.white.withOpacity(.85),
                          fontWeight: FontWeight.w200)),
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
                    )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 6),
                      child: chapterCard(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: hadithCard(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: hadithCard(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: hadithCard(context),
                    )

                  ],
                ),
              ),
            ]))
          ],
        )));
  }

  Card hadithCard(BuildContext context) {
    return Card(
        elevation: 2,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200,
            maxHeight: 500,
          ),
          child: Container(
            // height: 800,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
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
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 70,
                            decoration: BoxDecoration(
                                color: CustomColor.appColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text("সহিহ হাদিস  ",
                                  style: TextStyle(
                                      fontFamily: FontFamilyBangla,
                                      fontSize: 10,
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
                  Expanded(
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      child: Text(
                        "لكن لا بد أن أوضح لك أن كل هذه الأفكار المغلوطة حول استنكار "
                        " النشوة وتمجيد الألم نشأت بالفعل، وسأعرض لك "
                        "التفاصيل لتكتشف حقيقة وأساس تلك السعادة البشرية، فلا أحد يرفض أو يكره أو يتجنب الشعور بالسعادة، ولكن بفضل هؤلاء الأشخاص الذين لا يدركون بأن "
                        "السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في "
                        "السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في "
                        "السعادة لا بد أن نستشعرها بصورة أكثر عقلانية ومنطقية فيعرضهم هذا لمواجهة الظروف الأليمة، وأكرر بأنه لا يوجد من يرغب في "
                        "الحب ونيل المنال ويتلذذ بالآلام، الألم هو الألم ولكن نتيجة"
                        " الذين يتجنبون وينأون عن تحمل الكدح والألم"
                        "  لظروف ما قد تكمن السعاده فيما نتحمله"
                        " من كد وأسي.,",
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: FontFamilyArabic,
                          fontWeight: FontWeight.w400,
                          // overflow: TextOverflow.visible,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Card chapterCard(BuildContext context) {
    return Card(
        elevation: 2,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 160,
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
                            text: ' ১/১. অধ্যায়ঃ ',
                            style: TextStyle(
                                color: CustomColor.appColor,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              ' আল্লাহ্‌র রসূল (সাল্লাল্লাহু আলাইহি ওয়া সালাম)- এর প্রতি কীভাবে ওয়াহী [১] শুরু হয়েছিল।',
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
                    "এ মর্মে আল্লাহ তা'আলার বাণীঃ \"নিশ্চয়ই আমি আপনার প্রতি সেরূপ ওয়াহী প্রেরণ করেছি যেরূপ নূহ ও তাঁর পরবর্তী নবীদের প্রতি ওয়াহী প্রেরণ করেছিলাম\"। (সূরা আন-নিসা ৪/১৬৩).",
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
