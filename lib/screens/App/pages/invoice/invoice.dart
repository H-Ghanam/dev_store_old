import 'package:dev_store/Models/invoice.dart';
import 'package:dev_store/Modules/Invoice/Bloc/invoice_bloc.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({Key? key, required this.invoice}) : super(key: key);

  final Invoice? invoice;

  @override
  State<InvoicePage> createState() => _InvoicePageState();
}

class _InvoicePageState extends State<InvoicePage> {
  Invoice? _invoice;

  @override
  void initState() {
    super.initState();

    _invoice = widget.invoice;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceBloc, InvoiceState>(

        // create: (context) => JokeBloc(
        //   RepositoryProvider.of<JokeRepository>(context),
        // )..add(LoadJokeEvent()),
        builder: (context, state) {
      // if (state is InvoiceSuccessState) {

      return Center(child: Card(child: Text(" هي دي بدايتك: ${_invoice!.id}")));
      // } else {
      //   return const CircleAvatar();
      // }
    });
  }
}
