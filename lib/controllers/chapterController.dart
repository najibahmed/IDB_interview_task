import 'package:get/get.dart';

import '../db/db_helper.dart';
import '../models/chapter_model.dart';

class ChapterController extends GetxController {

  RxList<Chapter> chapterList=<Chapter>[].obs;
  Future<List<Chapter>> getChapters() async{
    DbHelper dbHelper=DbHelper();
    chapterList.value= await dbHelper.getChapters();
    return chapterList;
  }

  @override
  void onInit() {
    getChapters();
    // TODO: implement onInit
    super.onInit();
  }
}