import 'package:get/get.dart';
import 'package:idb_interview_task/db/db_helper.dart';

import '../models/book_model.dart';

class BookController extends GetxController {

 List<Books>? bookList=<Books>[].obs;
  Future<List<Books>?> getBooks() async{
   DbHelper dbHelper=DbHelper();
  bookList= await dbHelper.getBooks();
 return bookList;
}

@override
  void onInit() {
     getBooks();
    // TODO: implement onInit
    super.onInit();
  }
}