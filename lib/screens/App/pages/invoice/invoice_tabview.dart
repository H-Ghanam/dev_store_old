import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_content.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoiceTabView extends StatelessWidget {
  const InvoiceTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InvoiceBloc invoiceBloc = BlocProvider.of<InvoiceBloc>(context);

    return BlocBuilder<InvoiceBloc, InvoiceState>(
      builder: (context, state) {
        return TabView(
          tabs: state.tabs,
          bodies: state.invoices
              .map((invoiceData) {
                return InvoiceContent(invoiceId: invoiceData.invoice.id);
              })
              .toList()
              .cast<InvoiceContent>(),
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
