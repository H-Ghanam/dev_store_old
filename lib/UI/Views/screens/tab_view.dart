import 'dart:math';
import 'package:desktop_window/desktop_window.dart';
import 'package:dev_store/UI/Views/widgets/drop2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:window_manager/window_manager.dart';
class TabViewPage extends StatefulWidget {
  const TabViewPage({Key? key}) : super(key: key);

  @override
  State<TabViewPage> createState() => _TabViewPageState();
}

class _TabViewPageState extends State<TabViewPage> {
  Future testWindowFunctions() async {
    await DesktopWindow.resetMaxWindowSize();
    WindowOptions windowOptions = const WindowOptions(fullScreen: true);
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testWindowFunctions();
  }

  int currentIndex = 0;
  List<Tab>? tabs;
  List<Widget>? bodies;

  Tab generateTab(int index) {
    late Tab tab;
    tab = Tab(
      text: Text('Document $index'),
      semanticLabel: 'Document #$index',
      onClosed: () {
        setState(() {
          final currentIndex = tabs!.indexOf(tab);
          tabs!.remove(tab);
          bodies!.removeAt(currentIndex);
        });
      },
    );
    return tab;
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    tabs ??= List.generate(1, generateTab);
    bodies ??= List.generate(1, (index) {
      return Container(
        color:
            Colors.accentColors[Random().nextInt(Colors.accentColors.length)],
      );
    });

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Drop2(),
          Container(
            padding: const EdgeInsets.all(0),
            width: double.infinity,
            height: _size.height - 30,
            child: Card(
              padding: const EdgeInsets.all(0),
              borderRadius: const BorderRadius.all(Radius.zero),
              child: TabView(
                tabs: tabs!,
                bodies: bodies!,
                currentIndex: currentIndex,
                onChanged: (index) => setState(() => currentIndex = index),
                onNewPressed: () {
                  setState(() {
                    final index = tabs!.length + 1;
                    final tab = generateTab(index);
                    tabs!.add(tab);
                    bodies!.add(ColoredBox(
                      color: Colors.accentColors[
                          Random().nextInt(Colors.accentColors.length)],
                    ));
                  });
                },
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    if (oldIndex < newIndex) {
                      newIndex -= 1;
                    }
                    final item = tabs!.removeAt(oldIndex);
                    final body = bodies!.removeAt(oldIndex);

                    tabs!.insert(newIndex, item);
                    bodies!.insert(newIndex, body);

                    if (currentIndex == newIndex) {
                      currentIndex = oldIndex;
                    } else if (currentIndex == oldIndex) {
                      currentIndex = newIndex;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
