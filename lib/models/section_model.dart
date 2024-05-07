import 'dart:ffi';

class Section {
  num? id;
  num? bookId;
  String? bookName;
  num? chapterId;
  num? sectionId;
  String? title;
  String? preface;
  String? number;
  Section(this.id, this.bookId, this.bookName, this.chapterId, this.sectionId,
      this.title, this.preface, this.number);
}
