import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/screens/app/pages/invoice/invoice_tabview.dart';
import 'package:dev_store/screens/widgets/header.dart';
import 'package:dev_store/screens/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoiceTabviewPage extends ScrollablePage {
  InvoiceTabviewPage() : super(scrollable: false);

  // @override
  // Widget buildHeader(BuildContext context) {
  //   InvoiceBloc invoiceBloc = BlocProvider.of<InvoiceBloc>(context);
  //   return Header();
  // }

  @override
  List<Widget> buildScrollable(BuildContext context) {
    return [
      const InvoiceTabView(),
    ];
  }
}
