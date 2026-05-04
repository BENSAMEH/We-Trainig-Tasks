

import 'course.dart';

class Teacher {
  String? name;
  String? email;
  List<Course> teacherCourses = [];
  String? password;

  Teacher({required String name, required String email, String? password}) {
    this.name = name;
    this.email = email;
    this.password = password;
  }

  void addCourse(Course course) {
    teacherCourses.add(course);
    print("Course ${course.courseName} Added to teacher ${name}");
  }

  void deleteCourse(String courseName) {
    for (int i = teacherCourses.length - 1; i >= 0; i--) {
      if (teacherCourses[i].courseName == courseName) {
        teacherCourses.removeAt(i);
        print("course ${courseName} deleted from teacher ${name}");
        return;
      }
    }

    print("can't find course $courseName");
  }
}
