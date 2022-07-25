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
        width: (57/100)*size.width ,
        height: (57.7/100)*size.height,
        decoration: BoxDecoration(border: Border.all(width: (0.01/100)*size.width)),
        child: SfDataGrid(
          headerRowHeight: (3/100)*size.height,
          rowHeight: (2.8/100)*size.height,
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
                width: (5/100)*size.width,
                columnName: 'id',
                label: Container(
                    padding: const EdgeInsets.all(0.0),
                    alignment: Alignment.center,
                    child:  Text(
                      'رقم الصنف',style: TextStyle(fontSize: (0.8/100)*size.width),
                    ))),
            GridColumn(
                columnName: 'name',
                label: Container(
                  padding: const EdgeInsets.all(0.0),
                    alignment: Alignment.center,
                    child:  Text('الإسم',style: TextStyle(fontSize: (0.8/100)*size.width)))),
            GridColumn(
                columnName: 'designation',
                // width: 120,
                label: Container(
                   padding: const EdgeInsets.all(0.0),
                    alignment: Alignment.center,
                    child: Text('وحدة',style: TextStyle(fontSize: (0.8/100)*size.width)))),
            GridColumn(
                columnName: 'salary',
                label: Container(
                    padding: const EdgeInsets.all(0.0), 
                    alignment: Alignment.center,
                    child: Text('المتاح',style: TextStyle(fontSize: (0.8/100)*size.width)))),
          ],
        ),
      );
    }
  }
