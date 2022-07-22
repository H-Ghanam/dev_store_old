// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
// import 'package:fluent_ui/generated/l10n.dart';
// import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'dataGrid.dart';

class MyGrid extends StatefulWidget {
  const MyGrid({Key? key}) : super(key: key);

  @override
  State<MyGrid> createState() => _MyGridState();
}

class _MyGridState extends State<MyGrid> {
  @override
  void initState() {
    super.initState();
    employees = getEmployees();
    employeeDataSource = EmployeeDataSource(employees: employees);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Typography typography= FluentTheme.of(context).typography;
    return Container(
      //550
      // width: size.width - 552,
      width: size.width/1.55,
      height: size.height /1.77,
      decoration: BoxDecoration(border: Border.all(width: 0.3)),
      child: SfDataGrid(
        headerRowHeight: size.height/35,
        rowHeight: size.height/35,
        headerGridLinesVisibility: GridLinesVisibility.both,
        columnWidthMode: ColumnWidthMode.fill,
        allowColumnsResizing: true,
        columnResizeMode: ColumnResizeMode.onResizeEnd,
        gridLinesVisibility: GridLinesVisibility.both,
        source: employeeDataSource,
        allowSorting: true,
        allowSwiping: true,
        // swipeMaxOffset: 1000,
        columns: <GridColumn>[
          GridColumn(
              width: size.width/23,
              columnName: 'id',
              label: Container(
                  // padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: const Text(
                    'رقم الصنف',
                  ))),
          GridColumn(
              columnName: 'name',
              label: Container(
                  // padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: const Text('الإسم'))),
          GridColumn(
              columnName: 'designation',
              // width: 120,
              label: Container(
                  // padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: const Text('وحدة'))),
          GridColumn(
              columnName: 'salary',
              label: Container(
                  // padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  child: const Text('المتاح'))),
        ],
      ),
    );
  }
}
