import 'package:get/get.dart';
import 'package:idb_interview_task/db/db_helper.dart';

import '../models/book_model.dart';

class BookController extends GetxController {

 RxList<Books> bookList=<Books>[].obs;
  Future<List<Books>?> getBooks() async{
   DbHelper dbHelper=DbHelper();
  bookList.value= await dbHelper.getBooks();
 return bookList;
}

@override
  void onInit() {
     getBooks();
    // TODO: implement onInit
    super.onInit();
  }
}