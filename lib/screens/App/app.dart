import 'package:dev_store/main.dart';
import 'package:dev_store/screens/App/pages/home.dart';
import 'package:dev_store/screens/App/settings.dart';
import 'package:dev_store/screens/Login/login.dart';
import 'package:dev_store/theme.dart';
import 'package:dev_store/widgets/page.dart';
import 'package:fluent_ui/fluent_ui.dart' hide Page;
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:window_manager/window_manager.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WindowListener {
  bool value = false;

  int index = 0;

  final settingsController = ScrollController();
  final viewKey = GlobalKey();

  final key = GlobalKey();
  final searchFocusNode = FocusNode();
  final searchController = TextEditingController();
  void resetSearch() => searchController.clear();
  String get searchValue => searchController.text;
  final List<NavigationPaneItem> originalItems = [
    PaneItem(
      icon: const Icon(FluentIcons.home),
      title: const Text('الرئيسية'),
    ),
    PaneItemSeparator(),
    PaneItemHeader(header: const Text('عنوان القسم')),
  ];
  late List<NavigationPaneItem> items = originalItems;

  final content = <Page>[
    HomePage(),
    Settings(),
  ];

  @override
  void initState() {
    // setFullScreen();
    windowManager.addListener(this);
    searchController.addListener(() {
      setState(() {
        if (searchValue.isEmpty) {
          items = originalItems;
        } else {
          items = originalItems
              .whereType<PaneItem>()
              .where((item) {
                assert(item.title is Text);
                final text = (item.title as Text).data!;
                return text.toLowerCase().contains(searchValue.toLowerCase());
              })
              .toList()
              .cast<NavigationPaneItem>();
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    settingsController.dispose();
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    return NavigationView(
      key: viewKey,
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        title: () {
          if (kIsWeb) {
            return const Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(appTitle),
            );
          }
          return const DragToMoveArea(
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(appTitle),
            ),
          );
        }(),
        actions: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (appTitle == '')
               Card(
                child: Text(
                  "الشركة :  ${appData.options!.company}",
                  style: TextStyle(fontFamily: "Hind4",fontSize: 18),
                ),
              ),
            const Spacer(),
             Text("المستخدم : ${appData.activeUsers![select].title}",
                  style: TextStyle(fontFamily: "Hind4",fontSize: 18),),
            const Spacer(),
            ToggleSwitch(
              // content: const Text('Dark Mode'),
              checked: FluentTheme.of(context).brightness.isDark,
              onChanged: (v) {
                if (v) {
                  appTheme.mode = ThemeMode.dark;
                } else {
                  appTheme.mode = ThemeMode.light;
                }
              },
            ),
            if (!kIsWeb) const WindowButtons(),
          ],
        ),
      ),
      pane: NavigationPane(
        selected: () {
          // if not searching, return the current index
          if (searchValue.isEmpty) return index;

          final indexOnScreen = items.indexOf(
            originalItems.whereType<PaneItem>().elementAt(index),
          );
          if (indexOnScreen.isNegative) return null;
          return indexOnScreen;
        }(),
        onChanged: (i) {
          // If searching, the values will have different indexes
          if (searchValue.isNotEmpty) {
            final equivalentIndex = originalItems
                .whereType<PaneItem>()
                .toList()
                .indexOf(items[i] as PaneItem);
            i = equivalentIndex;
          }
          resetSearch();
          setState(() => index = i);
        },
        size: const NavigationPaneSize(
          openMinWidth: 250.0,
          openMaxWidth: 320.0,
        ),
        header: Container(
          height: kOneLineTileHeight,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: FlutterLogo(
            style: appTheme.displayMode == PaneDisplayMode.top
                ? FlutterLogoStyle.markOnly
                : FlutterLogoStyle.horizontal,
            size: appTheme.displayMode == PaneDisplayMode.top ? 24 : 100.0,
          ),
        ),
        displayMode: appTheme.displayMode,
        indicator: () {
          switch (appTheme.indicator) {
            case NavigationIndicators.end:
              return const EndNavigationIndicator();
            case NavigationIndicators.sticky:
            default:
              return const StickyNavigationIndicator();
          }
        }(),
        items: items,
        autoSuggestBox: TextBox(
          key: key,
          controller: searchController,
          placeholder: '  البحث في الصفحات',
          focusNode: searchFocusNode,
        ),
        autoSuggestBoxReplacement: const Icon(FluentIcons.search),
        footerItems: [
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('إعدادات'),
          ),

          // _LinkPaneItemAction(
          //   icon: const Icon(FluentIcons.open_source),
          //   title: const Text('Source code'),
          //   link: 'https://github.com/bdlukaa/fluent_ui',
          // ),
        ],
      ),
      content: NavigationBody(
        index: index,
        children: content.transform(context),
      ),
    );
  }

  @override
  void onWindowClose() async {
    bool _isPreventClose = await windowManager.isPreventClose();
    if (_isPreventClose) {
      showDialog(
        context: context,
        builder: (_) {
          return ContentDialog(
            title: const Text('تأكيد اخروج'),
            content: const Text('هل تود الخروج ؟'),
            actions: [
              FilledButton(
                child: const Text('نعم'),
                onPressed: () {
                  Navigator.pop(context);
                  windowManager.destroy();
                },
              ),
              Button(
                child: const Text('لا'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = FluentTheme.of(context);

    return SizedBox(
      width: 138,
      height: 50,
      child: WindowCaption(
        brightness: theme.brightness,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
