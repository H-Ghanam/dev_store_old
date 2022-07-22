// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';

class BackGround extends StatefulWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(index: 0, children: [
      Image.asset(
        "assets/images/2.png",
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Container(
        color: Colors.green.withOpacity(0.2),
      )
    ]);
  }
}
