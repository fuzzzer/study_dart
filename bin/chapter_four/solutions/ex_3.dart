// 3. Create a class named "Student" with attributes for name, age, and grades.
//Create methods for calculating the average grade of a student and for displaying the student's information.
void main() {
  Student sandro = Student(
      name: "Sandro", age: 24, studentId: 01044, grades: [100, 95, 85, 81, 95]);
  double sandrosAverageGrade = sandro.averageGrade()!;
  print(sandrosAverageGrade);
  print(sandro);
}

class Student {
  String name;
  int age;
  List<int>? grades;
  int studentId;

  Student(
      {required this.name,
      required this.age,
      this.grades,
      required this.studentId});
  double? averageGrade() {
    int totalgrades = 0;
    for (int i = 0; i < grades!.length; i++) {
      totalgrades += grades![i];
    }
    double average = totalgrades / grades!.length;
    return average;
  }

  @override
  String toString() {
    return 'Student{Name: $name, Age: $age, Grades: $grades, StudentId: $studentId}';
  }
}
