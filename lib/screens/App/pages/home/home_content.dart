import 'package:dev_store/screens/widgets/my_card.dart';
import 'package:dev_store/screens/widgets/wings_card.dart';
import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    Size size = MediaQuery.of(context).size;
    Typography typography = FluentTheme.of(context).typography;
    Gradient firstRowColor =
        LinearGradient(begin: AlignmentDirectional.bottomStart, colors: [
      appTheme.color,
      appTheme.color.lightest,
    ]);
    Gradient secondRowColor =
        LinearGradient(begin: AlignmentDirectional.bottomStart, colors: [
      appTheme.color,
      appTheme.color.lightest,
    ]);

    double cardSize = (7 / 100) * size.width;
    double horizontalSpace = (0.25 / 100) * size.width;

    return Container(
      width: double.infinity,
      height: (87 / 100) * size.height,
      margin: EdgeInsets.only(right: (0.6 / 100) * size.width),
      child: Stack(children: [
        // const BackGround(),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Column(
                //   children: [
                //     Text("تقارير هامة :"),
                //     Row(
                //       children: [
                //         // SizedBox(
                //         //     width: 200,
                //         //     height: 200,
                //         //     child: Chart1(
                //         //       month1: "ابريل",
                //         //       monthSales1: 20,
                //         //       month2: "مارس",
                //         //       monthSales2: 30,
                //         //       month3: "يناير",
                //         //       monthSales3: 10,
                //         //       month4: "اكتوبر",
                //         //       monthSales4: 50,
                //         //     )),
                //         // SizedBox(
                //         //     width: 400,
                //         //     height: size.height / 3.6,
                //         //     child: CircleChart(
                //         //         num1: 10,
                //         //         num2: 6,
                //         //         num3: 5,
                //         //         compare3: "55",
                //         //         chartType: ChartType.ring,
                //         //         compare1: "شهر 1",
                //         //         compare2: "شهر 2")),
                //       ],
                //     ),
                //     // Row(
                //     //   children: [
                //     //     const SizedBox(
                //     //         width: 200, height: 200, child: Charts2()),
                //     //     // SizedBox(
                //     //     //   width: 400,
                //     //     //   height: size.height / 3.6,
                //     //     //   child: CircleChart(
                //     //     //     compare1: "المبيعات",
                //     //     //     compare2: "المشتريات",
                //     //     //     num1: 4000,
                //     //     //     num2: 1500,
                //     //     //     chartType: ChartType.disc,
                //     //     //   ),
                //     //     // ),
                //     //   ],
                //     // ),
                //     // Row(
                //     //   children: [
                //     //     SizedBox(width: 230, height: 200, child: Chart3()),
                //     //     SizedBox(
                //     //       width: 400,
                //     //       height: size.height / 3.6,
                //     //       child: CircleChart(
                //     //         compare1: "مبيعات شهر(2)",
                //     //         compare2: "مبيعات شهر(3)",
                //     //         compare3: "مبيعات شهر(4)",
                //     //         compare4: "مبيعات شهر(5)",
                //     //         num1: 3800,
                //     //         num2: 4200,
                //     //         num3: 5000,
                //     //         num4: 2000,
                //     //         chartType: ChartType.disc,
                //     //       ),
                //     //     ),
                //     //   ],
                //     // ),
                //   ],
                // ),
              ],
            ),
          ],
        ),

        // /////////////////////////////////////
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Column(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         Container(
        //             width: 200,
        //             height: 200,
        //             child: Chart(
        //               month1: "مايو",
        //               monthSales1: 12,
        //               month2: "مارس",
        //               monthSales2: 16,
        //               month3: "ابريل",
        //               monthSales3: 20,
        //               month4: "اكتوبر",
        //               monthSales4: 60,
        //             )),
        //       ],
        //     ),
        //   ],
        // ),
        Column(
          children: [
            Row(
              children: [
                const WingsCard(),
                SizedBox(
                  width: (1.5 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  size: cardSize,
                  image: "assets/images/boxes.png",
                  title: "البضاعة",
                  gradient: firstRowColor,
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  size: cardSize,
                  image: "assets/images/man.png",
                  title: "الحسابات",
                  gradient: firstRowColor,
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  size: cardSize,
                  image: "assets/images/money.png",
                  title: "الخزينة",
                  gradient: firstRowColor,
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  size: cardSize,
                  image: "assets/images/bill.png",
                  title: "الفواتير",
                  gradient: firstRowColor,
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  size: cardSize,
                  image: "assets/images/statistics.png",
                  title: "تقارير",
                  gradient: firstRowColor,
                ),
                //  SizedBox(
                //   width:(0.5/100)*size.height,
                // ),
              ],
            ),
            SizedBox(
              height: (3 / 100) * size.height,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("إبدأ بمشاهدة الجولة السريعة"),
                    SizedBox(
                      height: (0.8 / 100) * size.height,
                    ),
                    Row(
                      children: [
                        MyCard(
                          matchTextDirection: false,
                          gradient: firstRowColor,
                          image: "assets/images/usher.png",
                          size: cardSize,
                          title: "أهلاً بكم",
                        ),
                        SizedBox(
                          width: (0.25 / 100) * size.width,
                        ),
                        MyCard(
                          matchTextDirection: false,
                          gradient: firstRowColor,
                          image: "assets/images/note.png",
                          size: cardSize,
                          title: "إعداد وينجز",
                        ),
                        SizedBox(
                          width: (0.25 / 100) * size.width,
                        ),
                        MyCard(
                          matchTextDirection: false,
                          gradient: firstRowColor,
                          image: "assets/images/writing.png",
                          size: cardSize,
                          title: "إدخال الأصناف",
                        ),
                        SizedBox(
                          width: (0.25 / 100) * size.width,
                        ),
                        MyCard(
                          matchTextDirection: false,
                          gradient: firstRowColor,
                          image: "assets/images/manager.png",
                          size: cardSize,
                          title: "إدخال الحسابات",
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(
                  width: cardSize + (0.5 / 100) * size.width,
                ),
                //////////////////
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("تقارير"),
                    SizedBox(
                      height: (0.8 / 100) * size.height,
                    ),
                    Row(
                      children: [
                        MyCard(
                          matchTextDirection: false,
                          gradient: firstRowColor,
                          image: "assets/images/8.png",
                          size: cardSize,
                          title: "الحركة اليومية",
                        ),
                        SizedBox(
                          width: (0.25 / 100) * size.width,
                        ),
                        MyCard(
                          matchTextDirection: false,
                          gradient: firstRowColor,
                          image: "assets/images/9.png",
                          size: cardSize,
                          title: "تحليل المبيعات",
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: (1 / 100) * size.height,
            ),
            Row(
              children: [const Text("حدد نوع المستند")],
            ),
            SizedBox(
              height: (1 / 100) * size.height,
            ),
            Row(
              children: [
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/sale.png",
                  size: cardSize * 2 + (0.25 / 100) * size.width,
                  title: "بيع",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/buy.png",
                  size: cardSize * 2 + (0.25 / 100) * size.width,
                  title: "شراء",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/coin.png",
                  size: cardSize,
                  title: "صرف",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/writing.png",
                  size: cardSize * 2 + (0.25 / 100) * size.width,
                  title: "جرد مخزن",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
              ],
            ),
            SizedBox(
              height: (0.4 / 100) * size.width,
            ),
            Row(
              children: [
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/11.png",
                  size: cardSize,
                  title: "مرتجع بيع",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/calc.png",
                  size: cardSize,
                  title: "عرض أسعار",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  gradient: firstRowColor,
                  image: "assets/images/11.png",
                  size: cardSize,
                  title: "مرتجع شراء",
                  matchTextDirection: true,
                ),
                SizedBox(
                  width: cardSize + (0.5 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/cash.png",
                  size: cardSize,
                  title: "قبض",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/truck.png",
                  size: cardSize,
                  title: "تحويل لمخزن",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
                MyCard(
                  matchTextDirection: false,
                  gradient: firstRowColor,
                  image: "assets/images/scale.png",
                  size: cardSize,
                  title: "تسوية مخزن",
                ),
                SizedBox(
                  width: (0.25 / 100) * size.width,
                ),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
