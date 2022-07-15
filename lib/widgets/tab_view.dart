import 'dart:math';

import 'package:dev_store/Models/invoice.dart';
import 'package:dev_store/Modules/App/bloc/app_bloc.dart';
import 'package:dev_store/Modules/Invoice/Bloc/invoice_bloc.dart';
import 'package:dev_store/Modules/Invoice/Responses/invoice_response.dart';
import 'package:dev_store/screens/App/pages/invoice/invoice.dart';
import 'package:dev_store/widgets/home_w.dart';
import 'package:dev_store/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

enum kind { sale, purchase }

class TabViewPage extends ScrollablePage {
  int currentIndex = 0;
  List<Tab>? tabs = [
    Tab(
      text: const Text("إبدأ من هنا"),
      semanticLabel: 'فاتورة : 000000000',
      onClosed: () {
        // setState(() {
        //   final currentIndex = tabs!.indexOf(tab);
        //   tabs!.remove(tab);
        //   bodies!.removeAt(currentIndex);
        // });
      },
    )
  ];

  // List<Tab>? tabs = [
  //   Tab(
  //     text: Text(),
  //     semanticLabel: 'فاتورة : ${invoice.id}',
  //     onClosed: () {
  //       setState(() {
  //         final currentIndex = tabs!.indexOf(tab);
  //         tabs!.remove(tab);
  //         bodies!.removeAt(currentIndex);
  //       });
  //     },
  //   );
  // ];

  // Invoice inv = Invoice(id: 77063, kind: "sale");
  List<Widget>? bodies = [
    InvoicePage(invoice: Invoice(id: 77063, kind: "sale"))
  ];
  int test = 1;
  bool loading = true;

  @override
  Widget buildHeader(BuildContext context) {
    return PageHeader(
        commandBar: Row(
          children: [
            Text(test.toString()),
            Button(
                child: Text("بيع"),
                onPressed: () {
                  setState(() {
                    test++;
                  });
                }),
            Button(child: Text("شراء"), onPressed: () {}),
            Button(child: Text("جرد"), onPressed: () {}),
            Button(child: Text("تسوية"), onPressed: () {}),
          ],
        ),
        title: const Text('TabView'));
  }

  // Tab generateTab(int index) {
  //   late Tab tab;
  //   tab = Tab(
  //     text: Text("sadasdasd"),
  //     // semanticLabel: 'Document #$index',
  //     onClosed: () {
  //       setState(() {
  //         final currentIndex = tabs!.indexOf(tab);
  //         tabs!.remove(tab);
  //         bodies!.removeAt(currentIndex);
  //       });
  //     },
  //   );
  //   return tab;
  // }
  Tab generateTab(Invoice? invoice) {
    late Tab tab;
    if (invoice != null) {
      tab = Tab(
        text: Text(invoice.kind!),
        semanticLabel: 'فاتورة : ${invoice.id}',
        onClosed: () {
          setState(() {
            final currentIndex = tabs!.indexOf(tab);
            tabs!.remove(tab);
            bodies!.removeAt(currentIndex);
          });
        },
      );
    } else {
      tab = Tab(
        text: const Text("إبدأ من هنا"),
        semanticLabel: 'فاتورة : 000000000',
        onClosed: () {
          setState(() {
            final currentIndex = tabs!.indexOf(tab);
            tabs!.remove(tab);
            bodies!.removeAt(currentIndex);
          });
        },
      );
    }
    return tab;
  }

  Widget generateBody(Invoice? invoice) {
    if (invoice != null) {
      return InvoicePage(invoice: invoice);
    } else {
      return Card(child: Text('${invoice!.kind}'));
    }
  }

  @override
  List<Widget> buildScrollable(BuildContext context) {
    Invoice? invoice = Invoice(id: 77063, kind: "sale");

    // tabs!.add(generateTab(invoice));
    // bodies!.add(generateBody(invoice));

    // Future<void> getInvoice(int id, String kind) async {
    //   context.read<InvoiceBloc>().add(OnGetInvoiceEvent(invoice: inv));
    // }

    // getInvoice(77063, "sale");

    // InvoiceState state = context.read<InvoiceBloc>().state;
    // Invoice invoice = getInvoice(77063, "sale");

    // tabs ??= List.generate(3, generateTab(invoice));
    // bodies ??= List.generate(3, (index) {
    //   return HomeW();
    // });

    return [
      // const Text(
      //   'A control that displays a collection of tabs that can be used to display several documents.',
      // ),
      // subtitle(
      //     content: const Text(
      //         'A TabView with support for adding, closing and rearraging tabs')),
      Card(
        child: SizedBox(
          height: 400,
          child: TabView(
            tabs: tabs!,
            bodies: bodies!,
            currentIndex: currentIndex,
            onChanged: (index) => setState(() => currentIndex = index),
            onNewPressed: () {
              setState(() {
                print(invoice.id);
                final index = tabs!.length + 1;
                final tab = generateTab(invoice);
                tabs!.add(tab);
                final body = generateBody(invoice);
                bodies!.add(body);
                loading = false;
              });
            },
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final item = tabs!.removeAt(oldIndex);
                final body = bodies!.removeAt(oldIndex);

                tabs!.insert(newIndex, item);
                bodies!.insert(newIndex, body);

                if (currentIndex == newIndex) {
                  currentIndex = oldIndex;
                } else if (currentIndex == oldIndex) {
                  currentIndex = newIndex;
                }
              });
            },
          ),
        ),
      ),
    ];
  }
}
