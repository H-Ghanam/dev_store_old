import 'package:dev_store/screens/widgets/my_card.dart';
import 'package:dev_store/screens/widgets/wings_card.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    Size size = MediaQuery.of(context).size;
    Gradient firstRowColor =
        LinearGradient(begin: AlignmentDirectional.bottomStart, colors: [
      appTheme.color,
      appTheme.color.lightest,
    ]);
    double firstRowSize = size.width / 13;
    return SizedBox(
      width: double.infinity,
      height: size.height - 100,
      child: Stack(children: [
        // const BackGround(),
        Column(
          children: [
            Row(
              children: [
                const WingsCard(),
                const SizedBox(
                  width: 40,
                ),
                MyCard(
                  size: firstRowSize,
                  image: "assets/images/boxes.png",
                  title: "البضاعة",
                  gradient: firstRowColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                MyCard(
                  size: firstRowSize,
                  image: "assets/images/man.png",
                  title: "الحسابات",
                  gradient: firstRowColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                MyCard(
                  size: firstRowSize,
                  image: "assets/images/money.png",
                  title: "الخزينة",
                  gradient: firstRowColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                MyCard(
                  size: firstRowSize,
                  image: "assets/images/bill.png",
                  title: "الفواتير",
                  gradient: firstRowColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                MyCard(
                  size: firstRowSize,
                  image: "assets/images/statistics.png",
                  title: "تقارير",
                  gradient: firstRowColor,
                ),
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const Text("إبدأ بمشاهدةالجولة السريعة"),
                const SizedBox(
                  width: 100,
                ),
                MyCard(
                  gradient: firstRowColor,
                  image: "assets/images/usher.png",
                  size: firstRowSize,
                  title: "أهلاً بكم",
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}









// // ignore_for_file: unnecessary_const

// import 'package:fluent_ui/fluent_ui.dart';

// class HomeW extends StatefulWidget {
//   const HomeW({Key? key}) : super(key: key);

//   @override
//   State<HomeW> createState() => _HomeWState();
// }

// class _HomeWState extends State<HomeW> {
//   double _opacity = 0.0;
//   double _opacity1 = 0.0;
//   double _opacity2 = 0.0;
//   double _opacity3 = 0.0;
//   double _opacity4 = 0.0;
//   double _opacity5 = 0.0;
//   double _opacity6 = 0.0;
//   double _opacity7 = 0.0;
//   double _opacity8 = 0.0;
//   double _opacity9 = 0.0;
//   double _opacity10 = 0.0;
//   double _opacity11 = 0.0;
//   double _opacity12 = 0.0;
//   double _opacity13 = 0.0;
//   double _opacity14 = 0.0;
//   double _opacity15 = 0.0;
//   double _opacity16 = 0.0;
//   double _opacity17 = 0.0;
//   double _opacity18 = 0.0;
//   double _opacity19 = 0.0;
//   double _opacity20 = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     // return const Center(
//     //   child: Card(child: Text("Home")),
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [Colors.magenta, Colors.magenta.lightest])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  البضاعة",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/boxes.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     // _visible = false;
//                     _opacity = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     const Color.fromARGB(255, 0, 156, 177),
//                     Colors.blue.lightest
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  الحسابات",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/man.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity1 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity1 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity1),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: const LinearGradient(colors: [
//                     Colors.warningPrimaryColor,
//                     Color.fromARGB(255, 255, 151, 113)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  الخزينة",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/money.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity2 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity2 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity2),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     const Color.fromARGB(255, 255, 203, 255),
//                     Colors.blue.lightest
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  الفواتير",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/bill.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity3 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity3 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity3),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 255, 115, 0),
//                     Color.fromARGB(255, 253, 214, 43),
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  التقارير",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/statistics.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity4 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity4 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity4),
//                 ),
//               ),
//             ]),
//           ],
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         SizedBox(
//           width: size.width / 1.3,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   const Text(
//                     "إبدأ بمشاهدة الجولة السريعة ",
//                     style: const TextStyle(fontFamily: "Hind4", fontSize: 22),
//                   ),
//                   Image.asset(
//                     "assets/images/10.png",
//                     width: 40,
//                   )
//                 ],
//               ),
//               SizedBox(
//                 width: size.width / 3.05,
//               ),
//               Row(
//                 children: [
//                   const Text("تقارير ",
//                       style: TextStyle(fontFamily: "Hind4", fontSize: 22)),
//                   Image.asset(
//                     "assets/images/10.png",
//                     width: 40,
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: const LinearGradient(colors: [
//                     Color.fromARGB(249, 4, 156, 29),
//                     Color.fromARGB(169, 191, 255, 172)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  أهلاً بكم",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/usher.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity5 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity5 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity5),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(248, 240, 30, 2),
//                     Color.fromARGB(169, 255, 159, 159)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  إعداد وينجز",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/note.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity6 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity6 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity6),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: const LinearGradient(colors: [
//                     const Color.fromARGB(248, 85, 2, 240),
//                     Color.fromARGB(169, 198, 173, 245)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  إدخال الأصناف",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/writing.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity7 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity7 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity7),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(248, 3, 19, 231),
//                     const Color.fromARGB(169, 198, 201, 247)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  إدخال الحسابات",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/manager.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity8 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity8 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 9,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity8),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: const LinearGradient(colors: [
//                     const Color.fromARGB(248, 187, 255, 0),
//                     Color.fromARGB(169, 239, 255, 148)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  الحركة اليومية",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/8.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity19 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity19 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity19),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: const LinearGradient(colors: [
//                     Color.fromARGB(248, 214, 69, 1),
//                     Color.fromARGB(169, 235, 155, 108)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  تحليل المبيعات",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/9.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity9 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity9 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 6.7,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity9),
//                 ),
//               ),
//             ]),
//           ],
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         SizedBox(
//           width: size.width / 1.3,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   const Text(
//                     "حدد نوع المستند ",
//                     style: TextStyle(fontFamily: "Hind4", fontSize: 22),
//                   ),
//                   Image.asset(
//                     "assets/images/10.png",
//                     width: 40,
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 5,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 4.5,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(248, 8, 214, 1),
//                     Color.fromARGB(255, 95, 231, 4)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  بيع",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/sale.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity10 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity10 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 4.5,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity10),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 4.5,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 172, 5, 5),
//                     Color.fromARGB(255, 223, 34, 34)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  شراء",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/buy.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity11 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity11 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 4.5,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity11),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 231, 83, 83),
//                     Color.fromARGB(169, 241, 146, 146)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  صرف",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/coin.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity12 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity12 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity12),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 4.5,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: const LinearGradient(colors: [
//                     Color.fromARGB(248, 1, 214, 214),
//                     Color.fromARGB(255, 130, 208, 211)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  جرد مخزن",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/writing.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity13 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity13 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 4.5,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity13),
//                 ),
//               ),
//             ])
//           ],
//         ),
//         const SizedBox(
//           height: 8,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 11, 221, 91),
//                     Color.fromARGB(169, 142, 250, 147)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  مرتجع بيع",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/11.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity14 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity14 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity14),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 21, 235, 153),
//                     Color.fromARGB(248, 67, 236, 194)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  عرض أسعار",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/calc.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity15 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity15 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity15),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 116, 28, 28),
//                     Color.fromARGB(169, 184, 31, 31)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  مرتجع شراء",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/11.png",
//                         width: 102,
//                         matchTextDirection: true,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity16 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity16 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity16),
//                 ),
//               ),
//             ]),
//             SizedBox(
//               width: size.width / 4.1,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 33, 177, 14),
//                     Color.fromARGB(169, 127, 243, 127)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  قبض",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/cash.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity17 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity17 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity17),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 21, 235, 153),
//                     Color.fromARGB(248, 67, 236, 194)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  تحويل لمخزن",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/truck.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity18 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity18 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity18),
//                 ),
//               ),
//             ]),
//             const SizedBox(
//               width: 8,
//             ),
//             Stack(children: [
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   decoration: const BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                     Color.fromARGB(255, 108, 187, 17),
//                     Color.fromARGB(169, 127, 231, 8)
//                   ])),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: const [
//                           Text(
//                             "  تسوية مخزن",
//                             style: TextStyle(fontFamily: "Hind3", fontSize: 23),
//                           ),
//                         ],
//                       ),
//                       Image.asset(
//                         "assets/images/scale.png",
//                         width: 102,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               MouseRegion(
//                 cursor: SystemMouseCursors.click,
//                 onExit: (e) {
//                   setState(() {
//                     _opacity20 = 0.0;
//                   });
//                 },
//                 onHover: (e) {
//                   setState(() {
//                     _opacity20 = 0.5;
//                   });
//                 },
//                 child: Container(
//                   width: size.width / 12,
//                   height: 140,
//                   color: Colors.grey.withOpacity(_opacity20),
//                 ),
//               ),
//             ]),
//           ],
//         ),
//       ],
//     );
//   }
// }
