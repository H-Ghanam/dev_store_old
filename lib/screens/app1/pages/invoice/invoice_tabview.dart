import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_content.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoiceTabView extends StatelessWidget {
  const InvoiceTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InvoiceBloc invoiceBloc = BlocProvider.of<InvoiceBloc>(context);
    AppTheme appTheme = context.watch<AppTheme>();
    Size size = MediaQuery.of(context).size;

    return BlocBuilder<InvoiceBloc, InvoiceState>(
      builder: (context, state) {
        return TabView(
          tabWidthBehavior: TabWidthBehavior.sizeToContent,
          wheelScroll: true,
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
            invoiceBloc.add(OnGetInvoiceEvent(
                // invoiceId: 1687,
                // kind: "PURCHASE",
                invoiceId: 74861,
                // invoiceId: 900300000,
                kind: "SALE",
                storeId: 1,
                size: size,
                appTheme: appTheme));
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
