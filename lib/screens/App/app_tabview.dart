import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppTabView extends StatelessWidget {
  const AppTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InvoiceBloc invoiceBloc = BlocProvider.of<InvoiceBloc>(context);

    return BlocBuilder<InvoiceBloc, InvoiceState>(
      builder: (context, state) {
        return TabView(
          tabs: state.tabs,
          bodies: state.invoices
              .map((invoiceData) {
                return InvoicePage(invoiceId: invoiceData.invoice.id);
              })
              .toList()
              .cast<InvoicePage>(),
          currentIndex: state.currentIndex,
          onChanged: (index) => {
            invoiceBloc.add(OnChangeTabEvent(currentIndex: index)),
          },
          onNewPressed: () {
            invoiceBloc
                .add(OnGetInvoiceEvent(invoiceId: 0, kind: "SALE", storeId: 1));
          },
          onReorder: (oldIndex, newIndex) {
            invoiceBloc.add(
                OnReorderTabsEvent(oldIndex: oldIndex, newIndex: newIndex));
          },
        );
      },
    );
  }
}
