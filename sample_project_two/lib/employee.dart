class Employee {
  final int id;
  final String name;
  final String designation;
  final String dept;

  Employee(
      {required this.id,
      required this.name,
      required this.designation,
      required this.dept});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        name: json['name'],
        designation: json['designation'],
        dept: json['dept']);
  }
}
