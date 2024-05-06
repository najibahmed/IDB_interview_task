import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:idb_interview_task/constants/colors.dart';
import 'package:idb_interview_task/constants/fontFamily.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Stack(children: [
        CustomAppBar(),
        Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent),
        Positioned(
          top: 85.0,
          right: 0,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),),
                  color: Colors.white),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 2,
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width*.9,
                          height:MediaQuery.of(context).size.height*.2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text( "1/1:"),
                                Divider(thickness: 1,),
                                Text( "Information"),
                              ],
                            ),
                          ),
                        )),
                    Card(
                      elevation: 2,
                        child: Container(
                          color: Colors.white,
                          width: MediaQuery.of(context).size.width*.9,
                          height:MediaQuery.of(context).size.height*.2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.white,
                                        )),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("সহিহ বুখারী ",
                                          style: TextStyle(
                                              fontFamily: FontFamilyBangla,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black54)),
                                      SizedBox(
                                        height: 6,
                                      ),
                                      Text("ওহীর সূচনা অধ্যায় ",
                                          style: TextStyle(
                                              fontFamily: FontFamilyBangla,
                                              fontSize: 12,
                                              color: CustomColor.appColor,
                                              fontWeight: FontWeight.w200)),
                                    ],
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            color: CustomColor.appColor,
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Center(
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
                                            icon: Icon(
                                              Icons.menu,
                                              color: Colors.grey,
                                            )),
                                      ],
                                    ),
                                  )
                                ])
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ),
        ),
      ])
    ])));
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      color: CustomColor.appColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  )),
            ),
            Column(
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
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  )),
            )
          ]),
        ],
      ),
    );
  }
}
