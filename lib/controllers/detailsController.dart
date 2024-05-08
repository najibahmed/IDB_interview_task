import 'package:get/get.dart';
import 'package:idb_interview_task/models/hadith_model.dart';
import 'package:idb_interview_task/models/section_model.dart';

import '../db/db_helper.dart';
import '../models/chapter_model.dart';

class DetailsController extends GetxController {

  RxList<SectionModel> sectionList=<SectionModel>[].obs;
  RxList<HadithModel> hadithList=<HadithModel>[].obs;
   DbHelper dbHelper=DbHelper();

  Future<List<HadithModel>> getHadith() async{
    hadithList.value= await dbHelper.getHadiths();
    return hadithList;
  }
  Future<List<SectionModel>> getSection() async{
    sectionList.value= await dbHelper.getSection();
    return sectionList;
  }

  @override
  void onInit() {
    getSection();
    getHadith();
    // TODO: implement onInit
    super.onInit();
  }
}