// ignore_for_file: sized_box_for_whitespace

import 'package:fluent_ui/fluent_ui.dart';

class WingsCard extends StatefulWidget {
  const WingsCard({Key? key}) : super(key: key);

  @override
  State<WingsCard> createState() => _WingsCardState();
}

class _WingsCardState extends State<WingsCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: const Color.fromARGB(255, 7, 28, 61),
                gradient: LinearGradient(colors: [
                  Colors.green.lightest,
                  Colors.green,
                ])),
            width: size.width / 13,
            height: 140,
            child: Column(
              children: [
                Stack(children: [
                  Center(child: Image.asset("assets/images/6.png", width: 100)),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 88),
                    child: Text(
                      "Wings",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: size.width / 55,
                          fontWeight: FontWeight.bold,
                          fontFamily: "En"),
                    ),
                  )
                ]),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "وينجز لإدارة الأعمال",
                style: TextStyle(fontFamily: "Hind4", fontSize: 45),
              ),
              Text("أسهل وأدق برنامج لإدارة المحلات والمخازن\nفي العالم العربي")
            ],
          ),
        )
      ],
    );
  }
}
