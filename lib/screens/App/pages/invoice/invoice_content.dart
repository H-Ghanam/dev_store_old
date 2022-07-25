import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/data/api/invoice_items_response.dart';
import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/models/category.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/models/invoice_options.dart';
import 'package:dev_store/models/item.dart';
import 'package:dev_store/models/money.dart';
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
      // buildWhen: (previous, current) {
      //   InvoiceData oldInvoiceData = previous.invoices
      //       .firstWhere((invoiceData) => invoiceData.invoice.id == invoiceId);
      //   InvoiceData newInvoiceData = current.invoices
      //       .firstWhere((invoiceData) => invoiceData.invoice.id == invoiceId);

      //   if (oldInvoiceData != newInvoiceData ||
      //       previous.invoices.length != current.invoices.length) return true;

      //   return false;
      // },
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

        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(" رقم الفاتورة : ${invoice.id}"),
                  Text(" إجمالي الفاتورة : ${invoice.total}"),
                  Text(" رقم العميل : ${invoice.accountId}"),
                  Text(" رقم الفاتورة الاخير  : $maxId"),
                  if (moneyCash != null)
                    Text(" المدفوع : ${moneyCash.moneyIn}"),
                  if (moneyPayment != null)
                    Text("المدفوع بشيك : ${moneyPayment.moneyIn}"),
                ],
              ),
              Row(
                children: () {
                  return invoiceItemsResponses
                      .map((e) => Column(
                            children: [
                              Text(" - ${e.title}"),
                              Text(" - ${e.amount}"),
                              Text(" - ${e.unit}"),
                              Text(" - ${e.unitPrice}"),
                              Text(" - ${e.total}"),
                            ],
                          ))
                      .toList();
                }(),
              ),
              Row(
                children: () {
                  return categories
                      .map((e) => Column(
                            children: [
                              Text(' - ${e.title}'),
                            ],
                          ))
                      .toList();
                }(),
              ),
              Row(
                children: () {
                  List<Widget> widgets = <Widget>[];
                  invoiceOptions.additionType != null
                      ? widgets.addAll(invoiceOptions.additionType!
                          .map((e) => Column(
                                children: [
                                  Text(' - $e'),
                                ],
                              ))
                          .toList())
                      : widgets.add(const Text(""));

                  return widgets;
                }(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(_test.toString()),
                  Button(
                      child: const Text("test state"),
                      onPressed: () {
                        // final ids = <int>[77063, 77062, 77060];

                        invoiceBloc.add(OnGetInvoiceEvent(
                            invoiceId: 77050, kind: "SALE", storeId: 1));
                      }),

                  TextBox(
                    onChanged: (value) {
                      double total = invoice.total ?? 0.0;
                      value = value.isNotEmpty ? value : "0";
                      final updatedInvoice =
                          invoice.copyWith(total: total + double.parse(value));

                      invoiceBloc.add(OnEditEvent(
                        invoiceData: invoiceData,
                        invoice: updatedInvoice,
                      ));
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
