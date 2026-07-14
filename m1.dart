import 'dart:io';

List<Map<String, dynamic>> students = [];
int counter = 0;

void main() {
  String appName = "student Managment";
  print(appName);
  bool work = true;
  while (work) {
    ShowMessage();
    String number = stdin.readLineSync() ?? "";
    switch (number) {
      case "1":
        addStudent();
        break;
      case "2":
        removestudent();
        break;
      case "3":
        ShowStudent();
        break;
      case "4":
        findStudent();
        break;
      case "5":
        work = false;
        break;
      default:
        print("invalid Number");
        break;
    }
  }
}

void ShowMessage() {
  print("choose 1 to Add Student");
  print("choose 2 to Remove Student");
  print("choose 3 to Show Student");
  print("choose 4 to Find Student");
  print("choose 5 to Stop the System");
  stdout.write("choose Number");
}

void addStudent() {
  stdout.write("Enter Name");
  String name = stdin.readLineSync() ?? "";

  stdout.write("Enter Level:");
  int Level = int.tryParse(stdin.readLineSync() ?? "") ?? 1;

  stdout.write("Enter Departement");
  String departement = stdin.readLineSync() ?? "";

  stdout.write("Enter Gpa:");
  double gpa = double.tryParse(stdin.readLineSync() ?? "") ?? 0.0;

  students.add({
    'id': counter++,
    'name': name, 
    'departement': departement,
    'Level': Level,
    'gpa': gpa,
  });
  print('Add successful');
}

void removestudent() {
  stdout.write("Enter ID:");
  int? id = int.tryParse(stdin.readLineSync() ?? "");
  if (id == null) {
    print("invalid");
    return;
  }
  students.remove((student) => student['id'] == id);
  print("Remove Done");
}

void ShowStudent() {
  if (students.isEmpty) {
    print("the list is empty");
    return;
  }

  for (var student in students) {
    print(
      "ID:${student['id']}, Name: ${student['name']},Departement: ${student['Departement']},Level:${student['Level']},Gpa:${student['Gpa']}",
    );
  }
}

void findStudent() {
  stdout.write("Enter ID:");
  int? id = int.tryParse(stdin.readLineSync() ?? "");
  if (id == null) {
    print("invalid");
    return;
  }
  for (var student in students) {
    if (student['id'] == id) {
      print(
        "ID:${student['id']}, Name: ${student['name']},Departement: ${student['Departement']},Level:${student['Level']},Gpa:${student['Gpa']}",
      );
      return;
    }
  }
  print("student is not found");
}
