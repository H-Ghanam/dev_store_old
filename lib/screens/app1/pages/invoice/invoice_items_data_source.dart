import 'dart:ui';

import 'package:dev_store/theme.dart';
import 'package:pluto_grid/pluto_grid.dart';

import 'package:dev_store/data/api/invoice_items_response.dart';

class InvoiceItemsDataSource {
  InvoiceItemsDataSource(
      {required List<InvoiceItemsResponse> invoiceItems,
      required AppTheme appTheme,
      required Size size}) {
    _appTheme = appTheme;
    _size = size;
    _invoiceItems = invoiceItems.isNotEmpty
        ? invoiceItems
            .map<PlutoRow>((e) => PlutoRow(cells: {
                  '': PlutoCell(value: ''),
                  'رقم': PlutoCell(value: e.itemId),
                  'اسم الصنف': PlutoCell(value: e.title),
                  'وحدة': PlutoCell(value: e.unit),
                  'المتاح': PlutoCell(value: e.qtyAvailable),
                  'الكمية': PlutoCell(
                      value: e.unitQtyOut), // Todo : Sale / Purchase ..etc
                  'السعر': PlutoCell(value: e.unitPrice),
                  'الاجمالي': PlutoCell(value: e.total),
                  'خصم': PlutoCell(value: e.discounts),
                  'النهائي': PlutoCell(value: e.netTotal),
                }))
            .toList()
        : <PlutoRow>[
            PlutoRow(cells: {
              '': PlutoCell(value: ''),
              'رقم': PlutoCell(value: 0),
              'اسم الصنف': PlutoCell(value: ""),
              'وحدة': PlutoCell(value: ""),
              'المتاح': PlutoCell(value: 0),
              'الكمية': PlutoCell(value: 0),
              'السعر': PlutoCell(value: 0),
              'الاجمالي': PlutoCell(value: 0),
              'خصم': PlutoCell(value: 0),
              'النهائي': PlutoCell(value: 0),
            })
          ];
  }

  List<PlutoRow> _invoiceItems = [];
  AppTheme _appTheme = AppTheme();
  // ignore: unused_field, prefer_final_fields
  Size _size = const Size(30, 30);

  List<PlutoRow> get rows => _invoiceItems;

  List<PlutoColumn> get columns {
    List<String> keys = rows.first.cells.keys.toList();
    List<dynamic> values = rows.first.cells.values.toList();
    return rows.first.cells.keys.map((key) {
      int index = keys.indexWhere((element) => element == key);
      var value = values.elementAt(index).value;
      PlutoColumnType type = PlutoColumnType.text();
      double width = (16 / 100) * _size.width;
      PlutoColumnTextAlign textAlign = PlutoColumnTextAlign.start;
      bool isFirst = index == 0;
      bool isReadOnly = true;

      if (value.runtimeType.toString() == "int" ||
          value.runtimeType.toString() == "double") {
        type = PlutoColumnType.number(
          allowFirstDot: true,
          format: '#.##',
        );
        width = (7 / 100) * _size.width;
        textAlign = PlutoColumnTextAlign.center;
      }

      if (value.runtimeType.toString() == "DateTime") {
        type = PlutoColumnType.date();
        width = (8 / 100) * _size.width;
        textAlign = PlutoColumnTextAlign.center;
      }

      if (value.runtimeType.toString() == "TimeOfDay") {
        type = PlutoColumnType.time();
        width = (6 / 100) * _size.width;
        textAlign = PlutoColumnTextAlign.center;
      }

      if (key == "وحدة") width = (6 / 100) * _size.width;
      if (key == "رقم") width = (5 / 100) * _size.width;

      if (key == "الكمية") isReadOnly = false;

      if (isFirst) width = (4 / 100) * _size.width;

      return PlutoColumn(
        backgroundColor: _appTheme.color.lightest,
        enableDropToResize: !isFirst,
        enableContextMenu: !isFirst,
        enableSetColumnsMenuItem: !isFirst,
        enableHideColumnMenuItem: !isFirst,
        enableRowChecked: isFirst,
        readOnly: isReadOnly,
        frozen: isFirst ? PlutoColumnFrozen.start : PlutoColumnFrozen.none,
        titleTextAlign: PlutoColumnTextAlign.center,
        textAlign: textAlign,
        width: width,
        title: keys[index],
        field: key,
        type: type,
      );
    }).toList();
  }
}

late InvoiceItemsDataSource invoiceItemsDataSource;
