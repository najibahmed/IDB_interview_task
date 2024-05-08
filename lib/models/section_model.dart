import 'dart:ffi';

class SectionModel {
  num? id;
  num? bookId;
  String? bookName;
  num? chapterId;
  num? sectionId;
  String? title;
  String? preface;
  String? number;
  SectionModel(this.id, this.bookId, this.bookName, this.chapterId, this.sectionId,
      this.title, this.preface, this.number);
}
