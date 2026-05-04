

import 'lecture.dart';
import 'sheet.dart';

class Course {
  String? courseName;
  String? description;
  List<Lecture> courseLectures = [];
  List<Sheet> courseSheets = [];

  Course({required name, String ?descreption}) {
    courseName = name;
    this.description = descreption;
  }

  void addLecture(Lecture lecture) {
    courseLectures.add(lecture);
    print("lecture ${lecture.lectureName} added to course ${courseName}");
  }

  void deleteLecture(String lectureName) {
    for (int i = courseLectures.length - 1; i >= 0; i--) {
      if (courseLectures[i].lectureName == lectureName) {
        courseLectures.removeAt(i);
        print("lecture $lectureName deleted from course ${courseName}");
        return;
      }
    }

    print("can't find lecture $lectureName");
  }

  void addSheet(Sheet sheet) {
    courseSheets.add(sheet);
    print("sheet ${sheet.sheetNumber} added to course ${courseName}");
  }

  void deleteSheet(int sheetNumber) {
    for (int i = courseSheets.length - 1; i >= 0; i--) {
      if (courseSheets[i].sheetNumber == sheetNumber) {
        courseSheets.removeAt(i);
        print("sheet $sheetNumber deleted from course ${courseName}");
        return;
      }
    }

    print("can't find sheet $sheetNumber");
  }
}
