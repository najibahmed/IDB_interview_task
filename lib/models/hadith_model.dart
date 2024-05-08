import 'dart:ffi';

class HadithModel {
  num? hadithId;
  num? bookId;
  String? bookName;
  num? chapterId;
  num? sectionId;
  String? narrator;
  String? bn;
  String? ar;
  String? ar_diacless;
  String? note;
  num? gradeID;
  String? grade;
  HadithModel(
      this.hadithId,
      this.bookId,
      this.bookName,
      this.chapterId,
      this.sectionId,
      this.narrator,
      this.bn,
      this.ar,
      this.ar_diacless,
      this.note,
      this.gradeID,
      this.grade);
}
