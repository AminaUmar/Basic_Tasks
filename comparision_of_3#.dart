import 'dart:io';

void main() {
  print('Take the Three input Numbers\n'); // check the input value
  print('Enter 1st number');
  String? num1 = stdin.readLineSync();
  int? Num1 = int.tryParse(num1 ?? " ");

  print('Enter 2nd number');
  String? num2 = stdin.readLineSync();
  int? Num2 = int.tryParse(num2 ?? " ");

  print('Enter 3rd number');
  String? num3 = stdin.readLineSync();
  int? Num3 = int.tryParse(num3 ?? " ");

  print('\n 1st number is: ${Num1}'); // input of 1st #
  print('2nd number is: ${Num2}'); // input of 2nd #
  print('3rd number is: ${Num3} \n'); // input of 3rd #

  print('Check the Conditions: \n');
  if ((Num1! == Num2) && (Num2 == Num3)) //Check for all three inputs are equal
  {
    print('All numbers are Equal.');
  } else if ((Num1 == Num2) || (Num1 == Num3)) //Check for Two inputs are equal
  {
    print('Two numbers are Equal.');
  } else if ((Num2 == Num1) || (Num2 == Num3)) {
    print('Two numbers are Equal.');
  } else if ((Num3 == Num1) || (Num3 == Num2)) {
    print('Two numbers are Equal.');
  } else if ((Num1 > Num2!) && (Num1 > Num3!)) //Check for Largest input
  {
    print('1st number is Largest ${Num1}');
  } else if ((Num2 > Num1) && (Num2 > Num3!)) {
    print('2nd number is Largest ${Num2}');
  } else if ((Num3! > Num1) && (Num3 > Num2)) {
    print('3rd number is Largest ${Num3}');
  } else //Check for no common input
  {
    print(' These Numbers has no commonalities.');
  }
}
