import 'package:dev_store/blocs/app_bloc/app_bloc.dart';
import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
import 'package:dev_store/models/invoice.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key, this.title, this.image, this.gradient, this.size})
      : super(key: key);

  final String? title;
  final String? image;
  final Gradient? gradient;
  final double? size;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  double _opacity = 0.0;
  //  Gradient? _gradient = widget.gradient;
  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    return Stack(children: [
      MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width: widget.size,
          height: 125,
          decoration: BoxDecoration(
              gradient: widget.gradient,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "${widget.image}",
                width: 70,
              ),
              Text(
                "${widget.title}",
                style: const TextStyle(
                    fontFamily: "Hind3", fontSize: 23, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      MouseRegion(
        cursor: SystemMouseCursors.click,
        onExit: (e) {
          setState(() {
            _opacity = 0.0;
          });
        },
        onEnter: (s) {
          setState(() {
            _opacity = 0.5;
          });
        },
        child: GestureDetector(
          onTap: () {
            // context.read<AppBloc>().add(OnActivePageChangeEvent(index: 0));
            // context.read<AppBloc>().add(OnActivePageChangeEvent(index: 1));
            context.read<InvoiceBloc>().add(
                OnGetInvoiceEvent(invoiceId: 77063, kind: "SALE", storeId: 1));
            appTheme.index = 1;
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  const Color.fromARGB(255, 217, 255, 0).withOpacity(_opacity),
            ),
            width: widget.size,
            height: 125,
          ),
        ),
      ),
    ]);
  }
}
