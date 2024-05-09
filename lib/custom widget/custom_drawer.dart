import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:idb_interview_task/constants/colors.dart';
import 'package:idb_interview_task/custom%20widget/helper_functions.dart';

import '../constants/fontFamily.dart';
import '../controllers/detailsController.dart';
import '../controllers/theme_controller.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final detailsController=Get.put(DetailsController());
    final ThemeController themeController = Get.find();
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.90),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(13))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Card(
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_forward_ios)),
                        Spacer(),
                        Text(
                          'সেটিংস ',
                          style: TextStyle(
                            fontFamily: FontFamilyBangla,
                            fontSize: 22,
                          ),
                        ),
                        Spacer(),
                        IconButton(onPressed: () {
                        }, icon: Icon(Icons.settings))
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .33,
                          child: Row(
                            children: [
                              Icon(Icons.file_copy_outlined),
                              Text(
                                'কন্টেন্ট সেটিংস ',
                                style: TextStyle(
                                  fontFamily: FontFamilyBangla,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'আরবি দেখান',
                              style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 14,
                              ),
                            ),
                            Obx(()=>
                                 Switch(
                                  activeColor: CustomColor.appColor,
                                  value: detailsController.showArabic.value,
                                  onChanged: (value){
                                    detailsController.showArabic.value=value;
                                  }
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'যবর-যের',
                              style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 14,
                              ),
                            ),
                            Obx(()=>
                                  Switch(
                                  activeColor: CustomColor.appColor,
                                  value: detailsController.showJoborJer.value,
                                  onChanged: (value){
                                    detailsController.showJoborJer.value=value;
                                  }
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 3,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .33,
                          child: Row(
                            children: [
                              Icon(Icons.text_fields_outlined),
                              Text(
                                'ফন্ট সেটিংস',
                                style: TextStyle(
                                  fontFamily: FontFamilyBangla,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'আরবি ফন্টের আকার',
                              style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Obx(()=>
                                    Slider(
                                    activeColor: CustomColor.appColor,
                                    value: detailsController.textSizeArabic.value,
                                    min: 14.0,
                                    max: 32.0,
                                    onChanged: (newValue) {
                                      detailsController.textSizeArabic.value = newValue;
                                    },
                                  ),
                                ),
                                Obx(()=>
                                    Text(
                                    '${englishToBanglaNumber('${detailsController.textSizeArabic.round()}')}',
                                    style: TextStyle(
                                      fontFamily: FontFamilyBangla,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'বাংলা ফন্টের আকার',
                              style: TextStyle(
                                fontFamily: FontFamilyBangla,
                                fontSize: 14,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Obx(()=>
                                    Slider(
                                    activeColor: CustomColor.appColor,
                                    value: detailsController.textSizeBangla.value,
                                    min: 18.0,
                                    max: 32.0,
                                    onChanged: (newValue) {
                                      detailsController.textSizeBangla.value = newValue;
                                    },
                                  ),
                                ),
                                Obx(()=>
                                    Text(
                                    '${englishToBanglaNumber('${detailsController.textSizeBangla.round()}')}',
                                    style: TextStyle(
                                      fontFamily: FontFamilyBangla,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(()=>
                      Text(
                      themeController.isDarkMode.value ? 'নাইট মোড' : 'ডে মোড ',
                      style: TextStyle(
                          fontFamily: FontFamilyBangla,
                          fontSize: 20.0),
                    ),
                  ),
                  Obx(()=>
                      Switch(
                      value: themeController.isDarkMode.value,
                      onChanged: (value) {
                        themeController.toggleTheme();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
