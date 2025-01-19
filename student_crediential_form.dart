import 'dart:io';

void main() {
  List<Map<String, dynamic>> studentPortal = []; // List Maps

  bool enterRecord = true;

  print('Student Annual System');
  print("------------------------");

  while (enterRecord) {
    print('\nEnter 1 to Add Record.');
    print("Enter 2 to Display All Students.");
    print('Enter 3 to Exit.');

    String? number = stdin.readLineSync();
    int? option = int.tryParse(number ?? "");

    if (option == 1) {
      Map<String, dynamic> studentInfo = {}; // Initialize map for each student

      // Input
      print('Enter Student Name: ');
      studentInfo['Name'] = stdin.readLineSync();
      print('Enter Student Father Name: ');
      studentInfo['Father_Name'] = stdin.readLineSync();

      // Input and validate phone number
      print('Enter Phone Number (e.g., 0300-2347890): ');
      String? phoneNumber = stdin.readLineSync();
      if (!isValidPhoneNumber(phoneNumber!)) {
        print('Invalid Phone Number. Follow the format (e.g., 0300-2347890).');
        phoneNumber = stdin.readLineSync();
        continue;
      }
      studentInfo['Phone#'] = phoneNumber;

      // Input and validate email address
      print('Enter Email Address (e.g., example@domain.com): ');
      String? email = stdin.readLineSync();
      if (!isValidEmail(email!)) {
        print('Invalid Email Address.');
        continue;
      }
      studentInfo['Email'] = email;

      // Input and validate CNIC
      print('Enter CNIC (e.g., 12345-1234567-1): ');
      String? cnic = stdin.readLineSync();
      if (!isValidCNIC(cnic!)) {
        print('Invalid CNIC. Follow the format (e.g., 12345-1234567-1).');
        continue;
      }
      studentInfo['CNIC'] = cnic;

      print('Enter Student Address: ');
      studentInfo['Address'] = stdin.readLineSync();

      // Add student info to the portal
      studentPortal.add(studentInfo);

      print('\nRecord added successfully!');
      print('Current added record:');
      studentInfo.forEach((key, value) {
        print('$key: $value');
      });
    } else if (option == 2) {
      print('--------------------------');
      print("Complete Student Records:\n");

      // Display all students in the list
      if (studentPortal.isEmpty) {
        print('No records found.');
      } else {
        for (var student in studentPortal) {
          student.forEach((key, value) {
            print('$key: $value');
          });
          print('--------------------------');
        }
      }
    } else if (option == 3) {
      enterRecord = false;
      print('Exiting... Thank you!');
    } else {
      print('Please enter a valid option.');
    }
  }
}

// Validation function for email format
bool isValidEmail(String email) {
  final RegExp emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  return emailRegex.hasMatch(email);
}

// Validation function for phone number format
bool isValidPhoneNumber(String phoneNumber) {
  final RegExp phoneRegex = RegExp(r'^\d{4}-\d{7}$');
  return phoneRegex.hasMatch(phoneNumber);
}

// Validation function for CNIC format
bool isValidCNIC(String cnic) {
  final RegExp cnicRegex = RegExp(r'^\d{5}-\d{7}-\d{1}$');
  return cnicRegex.hasMatch(cnic);
}
