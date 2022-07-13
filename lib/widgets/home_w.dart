import 'package:fluent_ui/fluent_ui.dart';

class HomeW extends StatefulWidget {
  const HomeW({Key? key}) : super(key: key);

  @override
  State<HomeW> createState() => _HomeWState();
}

class _HomeWState extends State<HomeW> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(child: Text("Home")),
    );
  }
}
