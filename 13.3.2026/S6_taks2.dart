import 'dart:io';

void main() {
  List<Map> students = [];

  print("Enter Number Of Students");
  int nOfStudents = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nOfStudents; i++) {
    print("\nEnter Student ${i + 1} Name");
    String name = stdin.readLineSync()!;

    print("Enter Student ${i + 1} Id");
    int id = int.parse(stdin.readLineSync()!);

    int nOfSubjects = 0;

    // Loop to ensure number of subjects is between 3 and 7
    do {
      print("Enter Number Of Subjects (3-7):");
      nOfSubjects = int.parse(stdin.readLineSync()!);
      if (nOfSubjects < 3 || nOfSubjects > 7) {
        print(
            "Error: Number of subjects must be between 3 and 7. Please enter again.");
      }
    } while (nOfSubjects < 3 || nOfSubjects > 7);

    Map<String, double> subjects = {};

    for (int j = 0; j < nOfSubjects; j++) {
      print("Enter Subject ${j + 1} Name");
      String subjectName = stdin.readLineSync()!;

      print("Enter Subject ${j + 1} Degree");
      double degree = double.parse(stdin.readLineSync()!);

      subjects[subjectName] = degree;
    }

    students.add({"Name": name, "Id": id, "Subjects": subjects});
  }

  double highest = -1;
  double lowest = 101;

  Map? highestStudent;
  Map? lowestStudent;

  for (Map s in students) {
    Map<String, double> subjects = s["Subjects"];

    double total = 0;
    subjects.forEach((sub, deg) {
      total += deg;
    });

    double percentage = total / subjects.length;

    String grade;
    if (percentage >= 90) {
      grade = "A";
    } else if (percentage >= 80) {
      grade = "B";
    } else if (percentage >= 70) {
      grade = "C";
    } else if (percentage >= 60) {
      grade = "D";
    } else {
      grade = "F";
    }

    print("\nStudent Id: ${s["Id"]}");
    print("Student Name: ${s["Name"]}");
    print("Subjects: ${s["Subjects"]}");
    print("Total: $total");
    print("Percentage: ${percentage.toStringAsFixed(2)}");
    print("Grade: $grade");

    if (percentage > highest) {
      highest = percentage;
      highestStudent = s;
    }
    if (percentage < lowest) {
      lowest = percentage;
      lowestStudent = s;
    }
  }

  print("\n===== Highest Student =====");
  print("Name: ${highestStudent!["Name"]}");
  print("Id: ${highestStudent["Id"]}");
  print("Percentage: ${highest.toStringAsFixed(2)}");

  print("\n===== Lowest Student =====");
  print("Name: ${lowestStudent!["Name"]}");
  print("Id: ${lowestStudent["Id"]}");
  print("Percentage: ${lowest.toStringAsFixed(2)}");
}