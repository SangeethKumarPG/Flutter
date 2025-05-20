import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:sample_project_two/employee.dart';

Future<List<Employee>> fetchEmployees() async {
  final response = await http
      .get(Uri.parse('https://localhost:7045/api/v1/GetAllEmployees'));
  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((item) => Employee.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load employees');
  }
}
