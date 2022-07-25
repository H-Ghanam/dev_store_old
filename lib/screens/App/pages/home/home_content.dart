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
