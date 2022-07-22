import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../theme.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

// BoxShadow _saleShadow = const BoxShadow(
//     color: Color.fromARGB(255, 16, 148, 49), blurRadius: 5,spreadRadius: 10,);

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    final appTheme = context.watch<AppTheme>();
    Brightness brightness=FluentTheme.of(context).brightness;

    return Container(
      // padding: EdgeInsets.all(1),
      // decoration: BoxDecoration(boxShadow:[BoxShadow(color: appTheme.color,blurRadius: 0.1,spreadRadius: 1)],),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          // Text(test.toString()),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all( EdgeInsets.symmetric(
                        horizontal: size.width/50, vertical: 5)),
                    backgroundColor: ButtonState.all(appTheme.color),
                  ),
                  child: const Text("بيع")),
              SizedBox(
                width: 5,
                child: Container(
                  width: 1,
                  color: Colors.black,
                  height: 3,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5)),
                    backgroundColor: ButtonState.all(appTheme.color),
                  ),
                  child: const Text("مرتجع بيع")),
            ],
          ),

          const SizedBox(
            width: 10,
            // child: Container(height: 25,color: Colors.grey[100],),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all( EdgeInsets.symmetric(
                        horizontal: size.width/60, vertical: 5)),
                    backgroundColor:
                        ButtonState.all(Colors.red.light),
                  ),
                  child: const Text("شراء")),
              SizedBox(
                width: 5,
                child: Container(
                  width: 1,
                  color: Colors.black,
                  height: 3,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5)),
                    backgroundColor:
                        ButtonState.all(Colors.red.lighter),
                  ),
                  child: const Text("مرتجع شراء")),
            ],
          ),
          const SizedBox(
            width: 10,
            // child: Container(width: 1,height: 25,color: Colors.grey[100],),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all( EdgeInsets.symmetric(
                        horizontal: size.width/60, vertical: 5)),
                    backgroundColor: ButtonState.all(appTheme.color),
                  ),
                  child: const Text("قبض")),
              SizedBox(
                width: 5,
                child: Container(
                  width: 1,
                  color: Colors.black,
                  height: 3,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all( EdgeInsets.symmetric(
                        horizontal: size.width/60, vertical: 5)),
                    backgroundColor:
                        ButtonState.all(Colors.red.lightest),
                  ),
                  child: const Text("صرف")),
            ],
          ),
          const SizedBox(
            width: 10,
            // child: Container(width: 1,height: 25,color: Colors.grey[100],),
          ),

          Button(
              onPressed: () {},
              style: ButtonStyle(
                padding: ButtonState.all(
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                backgroundColor: ButtonState.all(Colors.yellow.darkest),
              ),
              child: const Text("عرض أسعار")),

          const SizedBox(
            width: 10,
            // child: Container(width: 1,height: 25,color: Colors.grey[100],),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5)),
                    backgroundColor:
                        ButtonState.all(appTheme.color.withBlue(200)),
                  ),
                  child: const Text("جرد مخزن")),
              SizedBox(
                width: 5,
                child: Container(
                  width: 1,
                  color: Colors.black,
                  height: 3,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5)),
                    backgroundColor:
                        ButtonState.all(appTheme.color.withBlue(200)),
                  ),
                  child: const Text("تحويل لمخزن")),
              SizedBox(
                width: 5,
                child: Container(
                  width: 1,
                  color: Colors.black,
                  height: 3,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5)),
                    backgroundColor:
                        ButtonState.all(appTheme.color.withBlue(200)),
                  ),
                  child: const Text("تسوية مخزن")),
            ],
          ),
        ],
      ),
    );
  }
}
