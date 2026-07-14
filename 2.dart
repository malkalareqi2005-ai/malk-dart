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
  }
 