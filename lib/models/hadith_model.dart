import 'dart:ffi';

class Hadith {
  num? hadithId;
  num? bookId;
  String? bookName;
  num? chapterId;
  String? narrator;
  String? bn;
  String? ar;
  String? ar_diacless;
  String? note;
  num? gradeID;
  String? grade;
  Hadith(
      this.hadithId,
      this.bookId,
      this.bookName,
      this.chapterId,
      this.narrator,
      this.bn,
      this.ar,
      this.ar_diacless,
      this.note,
      this.gradeID,
      this.grade);
}
