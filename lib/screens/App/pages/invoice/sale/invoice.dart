// import 'package:dev_store/Models/invoice.dart';
// import 'package:dev_store/blocs/invoice_bloc/invoice_bloc.dart';
// import 'package:dev_store/screens/App/pages/invoice/sale/buttonsRow.dart';
// import 'package:dev_store/screens/App/pages/invoice/sale/greenRow.dart';
// import 'package:dev_store/screens/App/pages/invoice/sale/leftButtons.dart';
// import 'package:dev_store/screens/App/pages/invoice/sale/myGrid.dart';
// import 'package:dev_store/screens/App/pages/invoice/sale/rightCol.dart';
// import 'package:dev_store/screens/App/pages/invoice/sale/upRow.dart';
// import 'package:fluent_ui/fluent_ui.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../theme.dart';

// class InvoicePage extends StatefulWidget {
//   const InvoicePage({Key? key, required this.invoice}) : super(key: key);

//   final Invoice? invoice;

//   @override
//   State<InvoicePage> createState() => _InvoicePageState();
// }

// class _InvoicePageState extends State<InvoicePage> {
//   Invoice? _invoice;

//   @override
//   void initState() {
//     super.initState();

//     _invoice = widget.invoice;
//   }
// // Card(
// //         child: Text(" هي دي بدايتك: ${_invoice!.id}"),
// //       )

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     final appTheme = context.watch<AppTheme>();
//     return BlocBuilder<InvoiceBloc, InvoiceState>(builder: (context, state) {
//       return Container(
//         width: double.infinity,
//         // height: 500,
//         // color: const Color.fromARGB(255, 143, 143, 143),
//         decoration:
//             BoxDecoration(border: Border.all(width: (0.01 / 100) * size.width)),
//         child: Stack(children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                   height: (13.2 / 100) * size.height,
//                   width: (13.5 / 100) * size.width,
//                   decoration: BoxDecoration(
//                       border: Border(
//                           right: BorderSide(width: (0.01 / 100) * size.width),
//                           bottom:
//                               BorderSide(width: (0.01 / 100) * size.width))),
//                   child: Image.asset(
//                     "assets/images/6.png",
//                     fit: BoxFit.contain,
//                   )),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   LeftButtons(),
//                 ],
//               ),
//             ],
//           ),
//           Column(
//             children: [
//               Row(
//                 children: [
//                   const RightCol(),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       UpRow(),
//                       MyGrid(
//                         invoiceItems: [],
//                       ),
//                     ],
//                   ),
//                   // const Expanded(child: SizedBox()),
//                   // const LeftButtons()
//                 ],
//               ),
//               const Expanded(child: SizedBox()),
//               const GreenRow(),
//               Container(
//                 width: double.infinity,
//                 height: (4.95 / 100) * size.height,
//                 color: const Color.fromARGB(255, 80, 80, 80),
//                 // padding:  EdgeInsets.all((.1/100)*size.width),
//                 child: const ButtonsRow(),
//               )
//             ],
//           ),
//         ]),
//       );
//     });
//   }
// }
