

import 'course.dart';
import 'coursera.dart';
import 'lecture.dart';
import 'sheet.dart';
import 'teacher.dart';

main() {
  Coursera coursera = Coursera();
  Teacher teacher= coursera.registerTeacher(
    name: "Ahmed",
    email: "a@gmail.com",
    password: "12345",
  );
  Teacher teacher2= coursera.registerTeacher(
    name: "sameh",
    email: "s@gmail.com",
    password: "12345",
  );

  coursera.logInTeacher("Ahmed", "12345");
  //Teacher teacher = Teacher(name: "sameh", email: "s@gmail.com");
  Course course = Course(
    name: "Flutter",
    descreption: "We Flutter Course 2026",
  );
  Course course2 = Course(
    name: "database",
    descreption: "db",
  );
  teacher.addCourse(course);
  teacher.addCourse(course2);
  teacher2.addCourse(course);
  teacher2.addCourse(course2);
  teacher.deleteCourse("Flutter");
  teacher2.deleteCourse("database");

  course.addLecture(Lecture(
    name: "oop",
    file: "http.com",
    descriptipn: "oop lecture in flutter course",
  ));
  course.deleteLecture("oop");

  course.addSheet(Sheet(
    number: 1,
    file: "c:/adsasd",
    description: "sheet number 1 in oop lecture",
  ));
  course.deleteSheet(1);
  course2.addLecture(Lecture(name: "sql",file:"msdmfam" ));
  course.addLecture(Lecture(name: "state management", file: "dsfasffas"));
  course.deleteLecture("state management");
}
