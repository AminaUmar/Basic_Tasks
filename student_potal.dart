import 'dart:io';

class Student_Potal {
  String? name;
  double? grade;

  Student_Potal(this.name, this.grade); // Constructor

  void displayStudent() {
    print('Name: $name, Grade: $grade');
  }
}

void main() {
  List<Student_Potal> students = [];
  Map<String, double> studentMap = {};
  bool isRunning = true;

  print("Welcome to the Student Grades Manager!\n");

  while (isRunning) // Display option
  {
    print("\n1. Add Student");
    print("2. Display All Students");
    print("3. Find Student by Name");
    print("4. Exit");
    print("Choose an option:");

    String? select = stdin.readLineSync();
    int? option = int.tryParse(select ?? "");

    if (option == 1) // Add student
    {
      print('Enter Student Name: ');
      String? name = stdin.readLineSync();

      print('Enter Grade: ');
      String? gradeInput = stdin.readLineSync();
      double? grade = double.tryParse(gradeInput ?? "");

      if (name != null && grade != null) {
        Student_Potal student = Student_Potal(name, grade);
        students.add(student);
        studentMap[name] = grade;
        print("Student added successfully!");
      } else {
        print("Invalid input. Please enter a valid name and grade.");
      }
    } else if (option == 2) // Display All Students
    {
      if (students.isEmpty) {
        print("No students found.");
      } else {
        print("Students List:");
        for (int i = 0; i < students.length; i++) {
          print('${i + 1}.');
          students[i].displayStudent();
        }
      }
    } else if (option == 3) {
      print('Enter Student Name:'); // Find Student
      String? searchName = stdin.readLineSync();

      if (searchName != null && studentMap.containsKey(searchName)) {
        double? grade = studentMap[searchName];
        print('Student Found: Name: $searchName, Grade: $grade');
      } else {
        print('Student not found.');
      }
    } else if (option == 4) {
      isRunning = false; // Exit
      print("Goodbye!");
    } else {
      print("Invalid option. Please choose a valid option.");
    }
  }
}
