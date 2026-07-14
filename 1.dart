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


/*m2.dart
 void main()
 {
  List<Map<String, dynamic>> students =[];

  addStudent(
    students,
    name:"sara",
    age:20,
    grade:98,
  );

  addStudent(
    students,
    name:"malk",
    age:20,
    grade:92,
  );

   addStudent(
    students,
    name:"warda",
    age:20,
    grade:95,
  );

  print("student > 60:\n");
  
  for(var student in students){
    if(student["grade"] >60){
      print("Name: ${student["name"]}, Age: ${student["age"]}, Grade: ${student["grade"]}");

    }
  }
 }

 void addStudent(
  List<Map<String, dynamic>> student,{
  required String name,
  int? age,
  required double grade,
  }){
    student.add({
      "name" : name,
      "age" : age,
      "grade" : grade,
    });
  }*/
 


/*m3.dart

import 'dart:io';
void main(){
  divide(200,5);
  divide(200,0);
  divide(200, null);
}

void divide(int numerator, int? denominator){
  try{
    if (denominator == null){
      throw Exception("the denominator not exit");
    }
    if (denominator == 0){
      throw Exception("can not divide on zero");
    }
    double result = numerator / denominator;

    print("result = $result");
  } catch (e){
    print("error: $e");
  }
}*/


