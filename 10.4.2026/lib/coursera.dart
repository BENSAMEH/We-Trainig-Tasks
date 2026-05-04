

import 'teacher.dart';

class Coursera {
List <Teacher>teachers=[];

Teacher registerTeacher({required String name,required String email,required String password}){
  Teacher teacher =Teacher(name: name,email: email,password: password);
  teachers.add(teacher);
  print("new teacher ${teacher.name} registered successfully");
return teacher;
}
void logInTeacher(String name, String password) {
  bool found = false;

  for (Teacher teacher in teachers) {
    if (teacher.name == name &&
        teacher.password == password) {
      print("LogIn Successfully , Welcome ${teacher.name}");
      found = true;
      break;
    }
  }

  if (!found) {
    print("Error : username or password is wrong");
  }
}

}