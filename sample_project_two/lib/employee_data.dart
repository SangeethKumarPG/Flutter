import 'package:flutter/material.dart';
import 'package:sample_project_two/employee.dart';
import 'package:sample_project_two/fetch_employees.dart';

class EmployeeData extends StatefulWidget {
  const EmployeeData({super.key});

  @override
  State<EmployeeData> createState() => _EmployeeDataState();
}

class _EmployeeDataState extends State<EmployeeData> {
  late Future<List<Employee>> _employees;

  @override
  void initState() {
    super.initState();
    _employees = fetchEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Employee Data'),
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
                child: FutureBuilder<List<Employee>>(
                    future: _employees,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        print(snapshot.stackTrace);
                        return Text('Error: ${snapshot.error}');
                      } else {
                        // return ListView.builder(itemBuilder: (context, index){
                        //   return ListTile(title: Text('${snapshot.data![index].name}'));
                        // }, itemCount: snapshot.data!.length);
                        final employees = snapshot.data!;
                        final columns = [
                          const DataColumn(label: Text('ID')),
                          const DataColumn(label: Text('Name')),
                          const DataColumn(label: Text('Designation')),
                          const DataColumn(label: Text('Department')),
                        ];

                        final rows = employees.map((employee) {
                          return DataRow(cells: [
                            DataCell(Text('${employee.id}')),
                            DataCell(Text('${employee.name}')),
                            DataCell(Text('${employee.designation}')),
                            DataCell(Text('${employee.dept}')),
                          ]);
                        }).toList();
                        return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(columns: columns, rows: rows));
                      }
                    }))));
  }
}
