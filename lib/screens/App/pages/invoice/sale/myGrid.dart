// // ignore_for_file: file_names

// import 'package:dev_store/data/api/invoice_items_response.dart';
// import 'package:dev_store/screens/app/pages/invoice/invoice_items_data_source.dart';
// import 'package:fluent_ui/fluent_ui.dart';
// import 'package:syncfusion_flutter_datagrid/datagrid.dart';

// class MyGrid extends StatelessWidget {
//   const MyGrid({Key? key, required this.invoiceItems}) : super(key: key);

//   final List<InvoiceItemsResponse> invoiceItems;

//   @override
//   Widget build(BuildContext context) {
//     invoiceItemsDataSource = InvoiceItemsDataSource(invoiceItems: invoiceItems);
//     Size size = MediaQuery.of(context).size;
//     Typography typography = FluentTheme.of(context).typography;
//     return Container(
//       width: (57 / 100) * size.width,
//       height: (55.7 / 100) * size.height,
//       decoration:
//           BoxDecoration(border: Border.all(width: (0.01 / 100) * size.width)),
//       child: SfDataGrid(
//         // showCheckboxColumn: true,
//         // checkboxColumnSettings: const DataGridCheckboxColumnSettings(
//         //   showCheckboxOnHeader: true,
//         //   label: Text("select"),
//         // ),
//         headerRowHeight: (3 / 100) * size.height,
//         rowHeight: (2.8 / 100) * size.height,
//         headerGridLinesVisibility: GridLinesVisibility.both,
//         columnWidthMode: ColumnWidthMode.fill,
//         allowColumnsResizing: true,
//         columnResizeMode: ColumnResizeMode.onResizeEnd,
//         gridLinesVisibility: GridLinesVisibility.both,
//         source: invoiceItemsDataSource,
//         allowSorting: true,
//         allowSwiping: true,
//         // swipeMaxOffset: 1000,
//         // columns: invoiceItemsDataSource.columns,
//         columns: <GridColumn>[
//           GridColumn(
//               width: (5 / 100) * size.width,
//               columnName: 'id',
//               label: Container(
//                   padding: const EdgeInsets.all(0.0),
//                   alignment: Alignment.center,
//                   child: Text(
//                     'رقم الصنف',
//                     style: TextStyle(fontSize: (0.8 / 100) * size.width),
//                   ))),
//           GridColumn(
//               columnName: 'name',
//               label: Container(
//                   padding: const EdgeInsets.all(0.0),
//                   alignment: Alignment.center,
//                   child: Text('الإسم',
//                       style: TextStyle(fontSize: (0.8 / 100) * size.width)))),
//           GridColumn(
//               columnName: 'designation',
//               // width: 120,
//               label: Container(
//                   padding: const EdgeInsets.all(0.0),
//                   alignment: Alignment.center,
//                   child: Text('وحدة',
//                       style: TextStyle(fontSize: (0.8 / 100) * size.width)))),
//           GridColumn(
//               columnName: 'salary',
//               label: Container(
//                   padding: const EdgeInsets.all(0.0),
//                   alignment: Alignment.center,
//                   child: Text('المتاح',
//                       style: TextStyle(fontSize: (0.8 / 100) * size.width)))),
//         ],
//       ),
//     );
//   }
// }
