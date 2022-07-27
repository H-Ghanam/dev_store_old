import 'package:dev_store/theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

// BoxShadow _saleShadow =  BoxShadow(
//     color: Color.fromARGB(255, 16, 148, 49), blurRadius: 5,spreadRadius: 10,);

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final appTheme = context.watch<AppTheme>();
    Brightness brightness = FluentTheme.of(context).brightness;
    Typography typography = FluentTheme.of(context).typography;

    return Container(
      // margin: EdgeInsets.all((0.3 / 100) * size.width),
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
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (1.7 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor: ButtonState.all(appTheme.color),
                  ),
                  child: Text(
                    "بيع",
                    style: TextStyle(fontSize: typography.caption!.fontSize!-1),
                  )),
              SizedBox(
                width: (0.4 / 100) * size.width,
                child: Container(
                  // width: (10/100)*size.width,
                  color: Colors.black,
                  height: (0.4 / 100) * size.height,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (0.7 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor: ButtonState.all(appTheme.color),
                  ),
                  child: Text("مرتجع بيع",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
            ],
          ),

          SizedBox(
            width: (1 / 100) * size.width,
            // child: Container(height: 25,color: Colors.grey[100],),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (1.25 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor: ButtonState.all(Colors.red.light),
                  ),
                  child: Text("شراء",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
              SizedBox(
                width: (0.4 / 100) * size.width,
                child: Container(
                  // width: (10/100)*size.width,
                  color: Colors.black,
                  height: (0.4 / 100) * size.height,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (0.6 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor: ButtonState.all(Colors.red.lighter),
                  ),
                  child: Text("مرتجع شراء",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
            ],
          ),
          SizedBox(
            width: (1 / 100) * size.width,
            // child: Container(width: 1,height: 25,color: Colors.grey[100],),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (1.25 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor: ButtonState.all(appTheme.color),
                  ),
                  child: Text("قبض",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
              SizedBox(
                width: (0.4 / 100) * size.width,
                child: Container(
                  // width: (10/100)*size.width,
                  color: Colors.black,
                  height: (0.4 / 100) * size.height,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (1.25 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor: ButtonState.all(Colors.red.lightest),
                  ),
                  child: Text("صرف",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
            ],
          ),
          SizedBox(
            width: (1 / 100) * size.width,
            // child: Container(width: 1,height: 25,color: Colors.grey[100],),
          ),

          Button(
              onPressed: () {},
              style: ButtonStyle(
                padding: ButtonState.all(EdgeInsets.symmetric(
                    horizontal: (0.7 / 100) * size.width,
                    vertical: (0.5 / 100) * size.height)),
                backgroundColor: ButtonState.all(Colors.yellow.darkest),
              ),
              child: Text("عرض أسعار",
                  style: TextStyle(fontSize: typography.caption!.fontSize!-1))),

          SizedBox(
            width: (1 / 100) * size.width,
            // child: Container(width: 1,height: 25,color: Colors.grey[100],),
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (0.7 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor:
                        ButtonState.all(appTheme.color.withBlue(200)),
                  ),
                  child: Text("جرد مخزن",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
              SizedBox(
                width: (0.4 / 100) * size.width,
                child: Container(
                  // width: (10/100)*size.width,
                  color: Colors.black,
                  height: (0.4 / 100) * size.height,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (0.6 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor:
                        ButtonState.all(appTheme.color.withBlue(200)),
                  ),
                  child: Text("تحويل لمخزن",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
              SizedBox(
                width: (0.4 / 100) * size.width,
                child: Container(
                  // width: (10/100)*size.width,
                  color: Colors.black,
                  height: (0.4 / 100) * size.height,
                ),
              ),
              Button(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: ButtonState.all(EdgeInsets.symmetric(
                        horizontal: (0.6 / 100) * size.width,
                        vertical: (0.5 / 100) * size.height)),
                    backgroundColor:
                        ButtonState.all(appTheme.color.withBlue(200)),
                  ),
                  child: Text("تسوية مخزن",
                      style:
                          TextStyle(fontSize: typography.caption!.fontSize!-1))),
            ],
          ),
        ],
      ),
    );
  }
}
