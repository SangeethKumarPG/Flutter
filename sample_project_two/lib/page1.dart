import 'package:flutter/material.dart';
import 'package:sample_project_two/calculator.dart';
import 'package:sample_project_two/counter_app.dart';
import 'package:sample_project_two/datatransfer_from.dart';
import 'package:sample_project_two/employee_data.dart';
import 'package:sample_project_two/form_validation.dart';
import 'package:sample_project_two/multiplication_table.dart';
import 'package:sample_project_two/radio_button.dart';
import 'package:sample_project_two/text_field.dart';
import 'package:sample_project_two/text_field_styled.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     body: Center(
      //   child: Row(
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const CounterApp()));
      //             },
      //             child: const Text('Counter App')),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const MyTextField()));
      //             },
      //             child: const Text('Text Field')),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const StyledTextField()));
      //             },
      //             child: const Text('Styled Text')),
      //       ),
      //       Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ElevatedButton(
      //               onPressed: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                         builder: (context) => const Calculator()));
      //               },
      //               child: const Text('Calculator'))),
      //       Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const MultiplicationTable()));
      //             },
      //             child: const Text('Multiplication Table'),
      //           )),
      //       Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: ElevatedButton(
      //               onPressed: () {
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                         builder: (context) => const RadioButton()));
      //               },
      //               child: const Text('RadioButton'))),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const DatatransferFrom()));
      //             },
      //             child: const Text('Data Transfer')),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(
      //             onPressed: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => const FormValidation()));
      //             },
      //             child: const Text('Form Validation')),
      //       )
      //     ],
      //   ),
      // )
      appBar: AppBar(
        title: const Text('Sample Project Two'),
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text('Menu',
                    style: TextStyle(color: Colors.white, fontSize: 24))),
            _buildListTile(context,
                icon: Icons.timer,
                title: 'Counter App',
                page: const CounterApp()),
            _buildListTile(context,
                icon: Icons.calculate,
                title: "Calculator",
                page: const Calculator()),
            _buildListTile(context,
                icon: Icons.data_array,
                title: 'Data Transfer',
                page: const DatatransferFrom()),
            _buildListTile(context,
                icon: Icons.table_chart_outlined,
                title: "Multiplication Table",
                page: const MultiplicationTable()),
            _buildListTile(context,
                icon: Icons.radio_button_checked,
                title: "RadioButton",
                page: const RadioButton()),
            _buildListTile(context,
                icon: Icons.text_fields,
                title: "Text Field Styled",
                page: const StyledTextField()),
            _buildListTile(context,
                icon: Icons.pages,
                title: "Form Validation",
                page: const FormValidation()),
            _buildListTile(context,
                icon: Icons.text_fields_rounded,
                title: "Text Fields",
                page: const MyTextField()),
            _buildListTile(context,
                icon: Icons.api, title: "API Get", page: const EmployeeData())
          ],
        ),
      ),
    );
  }
}

Widget _buildListTile(BuildContext context,
    {required IconData icon, required String title, required Widget page}) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: () {
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    },
  );
}
