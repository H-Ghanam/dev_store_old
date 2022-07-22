import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/models/category.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/models/invoice_items.dart';
import 'package:dev_store/models/item.dart';
import 'package:dev_store/models/money.dart';
import 'package:dev_store/models/options.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key, required this.invoiceId}) : super(key: key);

  final num invoiceId;

  @override
  Widget build(BuildContext context) {
    InvoiceBloc invoiceBloc = BlocProvider.of<InvoiceBloc>(context);
    InvoiceData invoiceData = BlocProvider.of<InvoiceBloc>(context)
        .state
        .invoices
        .where((invoiceData) => invoiceData.invoice.id == invoiceId)
        .first;
    Invoice invoice = invoiceData.invoice;
    List<Category>? categories = invoiceData.categories;
    List<InvoiceItems>? invoiceItems = invoiceData.invoiceItems;
    int? maxId = invoiceData.maxId;
    Money? moneyCash = invoiceData.moneyCash;
    Money? moneyPayment = invoiceData.moneyPayment;
    Options? options = invoiceData.options;
    List<Item>? starredItems = invoiceData.starredItems;
    List<Category>? starredCats = invoiceData.starredCats;

    return Center(
        child: Card(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(" رقم الفاتورة: ${invoice.id}"),
                Text(" إجمالي الفاتورة: ${invoice.total}"),
                Text(" رقم العميل: ${invoice.accountId}"),
                Text(" رقم الفاتورة الاخير $maxId"),
                Text(" التصنيفات: ${categories!.length}"),
              ],
            ),
            Column(
              children: () {
                return invoiceItems!
                    .map(
                        (e) => Text("الصنف:  ${e.title}, الكمية:  ${e.amount}"))
                    .toList();
              }(),
            ),
          ],
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
                      invoiceId: 77063, kind: "SALE", storeId: 1));
                })
          ],
        ),
      ],
    )));
  }
}
