import 'dart:io';

void main() {
  print("Enter your name: ");
  String student_name = stdin.readLineSync()!;

  print("Enter your degree: ");
  double student_degree = double.parse(stdin.readLineSync()!);

  if (student_degree >= 50 && student_degree <= 95) {
    student_degree += 5;
    print("Successful");
  } else if (student_degree >= 95 && student_degree <= 100) {
    print("Successful");
  } else {
    print("Failer");
  }
}
