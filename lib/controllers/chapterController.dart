import 'package:get/get.dart';

import '../db/db_helper.dart';
import '../models/chapter_model.dart';

class ChapterController extends GetxController {

  RxList<ChapterModel> chapterList=<ChapterModel>[].obs;
  Future<List<ChapterModel>> getChapters() async{
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