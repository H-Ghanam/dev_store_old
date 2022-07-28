import 'dart:async';

import 'package:dev_store/data/api/invoice_items_response.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_items_data_source.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart' hide ButtonStyle;
import 'package:flutter/material.dart'
    show
        Dialog,
        ElevatedButton,
        MaterialStateProperty,
        TextField,
        ButtonStyle,
        Scaffold;
import 'package:pluto_grid/pluto_grid.dart';
import 'package:provider/provider.dart';

class InvoiceDataGrid extends StatefulWidget {
   InvoiceDataGrid(
      {Key? key,
      required this.invoiceItems,
      required this.appTheme,
      required this.size,
      required this.width,
      required this.height,
      required this.i

      })
      : super(key: key);

  final List<InvoiceItemsResponse> invoiceItems;
  final AppTheme appTheme;
  final Size size;
  double width;
  double height;
  double i;



  @override
  State<InvoiceDataGrid> createState() => _InvoiceDataGridState();
}

class _InvoiceDataGridState extends State<InvoiceDataGrid> {
  final List<PlutoColumn> columns = [];

  final List<PlutoRow> rows = [];

  late PlutoGridStateManager stateManager;

  late StreamSubscription removeKeyboardListener;

  late InvoiceItemsDataSource invoiceItemsDataSource;

  @override
  void dispose() {
    removeKeyboardListener.cancel();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    invoiceItemsDataSource = InvoiceItemsDataSource(
        invoiceItems: widget.invoiceItems,
        appTheme: widget.appTheme,
        size: widget.size);

    columns.addAll(invoiceItemsDataSource.columns);

    rows.addAll(invoiceItemsDataSource.rows);
  }

  void handleKeyboard(PlutoKeyManagerEvent event) {
    // Specify the desired shortcut key.
    if (event.isKeyDownEvent && event.isCtrlC) {
      openNewRecord();
    }
  }

  void openNewRecord() async {
    String? value = await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          final textController = TextEditingController();
          return Dialog(
            child: LayoutBuilder(
              builder: (ctx, size) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  height: 500,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Implement a screen to add a new record.'),
                        const Text('Input some text, and Press Create Button.'),
                        TextField(
                          controller: textController,
                          autofocus: false,
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Wrap(
                            spacing: 10,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(ctx, null);
                                },
                                child: const Text('Cancel.'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  print(textController.text);
                                  Navigator.pop(ctx, textController.text);
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.blue,
                                  ),
                                ),
                                child: const Text(
                                  'Create.',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });

    if (value == null || value.isEmpty) {
      return;
    }

    PlutoRow newRow = PlutoRow(
      cells: {
        'column_1': PlutoCell(value: value.toString()),
        'column_2': PlutoCell(value: value.toString()),
        'column_3': PlutoCell(value: value.toString()),
        'column_4': PlutoCell(value: value.toString()),
        'column_5': PlutoCell(value: value.toString()),
      },
    );

    stateManager.prependRows([newRow]);
    stateManager.moveScrollByRow(PlutoMoveDirection.up, 1);
    stateManager.setCurrentCell(newRow.cells.entries.first.value, 0);
  }

  void openDetail(PlutoRow? row) async {
    String? value = await showDialog(
        context: context,
        builder: (BuildContext ctx) {
          final textController = TextEditingController();
          return Dialog(
            child: LayoutBuilder(
              builder: (ctx, size) {
                return Container(
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  height: 500,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Implement a screen to update a record.'),
                        const Text('Input some text, and Press Update Button.'),
                        TextField(
                          controller: textController,
                          autofocus: false,
                        ),
                        const SizedBox(height: 20),
                        ...row!.cells.entries
                            .map((e) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(e.value.value.toString()),
                                ))
                            .toList(),
                        const SizedBox(height: 20),
                        Center(
                          child: Wrap(
                            spacing: 10,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(ctx, null);
                                },
                                child: const Text('Cancel.'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(ctx, textController.text);
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                    Colors.blue,
                                  ),
                                ),
                                child: const Text(
                                  'Update.',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        });

    if (value == null || value.isEmpty) {
      return;
    }

    stateManager.changeCellValue(
      stateManager.currentRow!.cells['الكمية']!,
      value,
      force: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appTheme = context.watch<AppTheme>();
    return Container(
      // width: (75 / 100) * size.width,
      // width: size.width-365,
      //216
      //390
      width: size.width-widget.width,
      height: size.height-widget.height,
      // height: (55.7 / 100) * size.height,
      decoration: BoxDecoration(border: Border.all(color: Colors.yellow,width: widget.i)),
      child: Scaffold(
        body: PlutoGrid(
          rows: rows,
          columns: columns,
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          onLoaded: (PlutoGridOnLoadedEvent event) {
            
            stateManager = event.stateManager;

            removeKeyboardListener =
                stateManager.keyManager!.subject.stream.listen(handleKeyboard);

            stateManager.setSelectingMode(PlutoGridSelectingMode.none);
          },
          
          onSelected: (PlutoGridOnSelectedEvent event) {
            if (event.row != null) {
              openDetail(event.row);
            }
          },
          mode: PlutoGridMode.normal,
          configuration: PlutoGridConfiguration(
            localeText: const PlutoGridLocaleText.arabic(),
            style: PlutoGridStyleConfig(
              gridBackgroundColor: appTheme.mode == ThemeMode.dark
                  ? appTheme.color.lighter
                  : Colors.white,
              activatedColor: appTheme.color.lightest,
              enableCellBorderVertical: true,
              rowHeight:30,
              columnHeight: 27,
              checkedColor: appTheme.color,
              oddRowColor: Colors.grey[20],
              cellTextStyle: TextStyle(
                  color: Colors.grey[200],
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: ""),
              columnTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: ""),
            ),
          ),
        ),
      ),
    );
  }
}
