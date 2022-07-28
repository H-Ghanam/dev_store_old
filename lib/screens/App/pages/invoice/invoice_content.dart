import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/cubit/showGrid_cubit.dart';
import 'package:dev_store/data/api/invoice_items_response.dart';
import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/models/category.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/models/invoice_options.dart';
import 'package:dev_store/models/item.dart';
import 'package:dev_store/models/money.dart';
import 'package:dev_store/screens/App/pages/invoice/invoice_datagrid.dart';
import 'package:dev_store/screens/App/pages/invoice/sale/upRow.dart';
// import 'package:dev_store/screens/app/pages/invoice/invoice_datagrid.dart';
import 'package:dev_store/screens/app/pages/invoice/sale/buttonsRow.dart';
import 'package:dev_store/screens/app/pages/invoice/sale/greenRow.dart';
import 'package:dev_store/screens/app/pages/invoice/sale/leftButtons.dart';
// import 'package:dev_store/screens/app/pages/invoice/sale/myGrid.dart';
import 'package:dev_store/screens/app/pages/invoice/sale/rightCol.dart';
// import 'package:dev_store/screens/app/pages/invoice/sale/upRow.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoiceContent extends StatelessWidget {
  const InvoiceContent({Key? key, required this.invoiceId}) : super(key: key);

  final int invoiceId;

  @override
  Widget build(BuildContext context) {
    InvoiceBloc invoiceBloc = BlocProvider.of<InvoiceBloc>(context);

    // صفحة الفاتورة
    return BlocBuilder<InvoiceBloc, InvoiceState>(
      builder: (context, state) {
        InvoiceData invoiceData = state.invoices
            .firstWhere((invoiceData) => invoiceData.invoice.id == invoiceId);

        Invoice invoice = invoiceData.invoice;
        List<Category>? categories = invoiceData.categories!;
        List<InvoiceItemsResponse> invoiceItemsResponses =
            invoiceData.invoiceItemsResponses!;
        int? maxId = invoiceData.maxId!;
        Money? moneyCash = invoiceData.moneyCash;
        Money? moneyPayment = invoiceData.moneyPayment;
        InvoiceOptions? invoiceOptions = invoiceData.invoiceOptions!;
        // ignore: unused_local_variable
        List<Item>? starredItems = invoiceData.starredItems;
        // ignore: unused_local_variable
        List<Category>? starredCats = invoiceData.starredCats;

        Size size = MediaQuery.of(context).size;
        final appTheme = context.watch<AppTheme>();
        return BlocBuilder<InvoiceBloc, InvoiceState>(
            builder: (context, state) {
          return Container(
            width: double.infinity,
            // height: 500,
            // color: const Color.fromARGB(255, 143, 143, 143),
            decoration: BoxDecoration(
                border: Border.all(width: (0.01 / 100) * size.width)),
            child: Stack(children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Container(
              //         // height: (13.2 / 100) * size.height,
              //         height: 142,
              //         width: (13.5 / 100) * size.width,
              //         decoration: BoxDecoration(
              //             border: Border(
              //                 right:
              //                     BorderSide(width: (0.01 / 100) * size.width),
              //                 bottom: BorderSide(
              //                     width: (0.01 / 100) * size.width))),
              //         child: Image.asset(
              //           "assets/images/6.png",
              //           fit: BoxFit.contain,
              //         )),
              //   ],
              // ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 141,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      LeftButtons(),
                      const SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ],
              ),

              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const RightCol(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const UpRow(),
                              // InvoiceDataGrid(
                                // invoiceItems: invoiceItemsResponses,
                                // appTheme: appTheme,
                                // size: size,

                              // ),
                              InvoiceDataGrid(
                                   invoiceItems: invoiceItemsResponses,
                                appTheme: appTheme,
                                size: size,
                                 width: 216,
                                 height: 390,
                                i: 0,
                                 )
                            ],
                          ),
                        ],
                      ),

                      // const Expanded(child: SizedBox()),
                      // LeftButtons()
                    ],
                  ),
                  const Expanded(child: SizedBox()),
                  const GreenRow(),
                  Container(
                    width: double.infinity,
                    height: 48,
                    color: const Color.fromARGB(255, 80, 80, 80),
                    // padding:  EdgeInsets.all((.1/100)*size.width),
                    child: const ButtonsRow(),
                  )
                ],
              ),
              BlocBuilder<ShowGridCubit, ShowGridState>(
                builder: (context, state) {
                  return Visibility(
                    visible: BlocProvider.of<ShowGridCubit>(context).visibility,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 75,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 143,
                            ),
                            InvoiceDataGrid(
                              invoiceItems: invoiceItemsResponses,
                              appTheme: appTheme,
                              size: MediaQuery.of(context).size,
                              width: 145,
                              height: 320,
                              i: 3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ]),
          );
        });
      },
    );
  }
}
