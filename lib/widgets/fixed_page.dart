import 'dart:async';

import 'package:fluent_ui/fluent_ui.dart';

typedef PageState = Map<String, dynamic>;

abstract class Page {
  Page() {
    _pageIndex++;
  }

  final StreamController _controller = StreamController.broadcast();
  Stream get stateStream => _controller.stream;

  Widget build(BuildContext context);

  void setState(VoidCallback func) {
    func();
    _controller.add(null);
  }
}

int _pageIndex = -1;

abstract class FixedPage extends Page {
  FixedPage() : super();

  Widget buildHeader(BuildContext context) => const SizedBox.shrink();

  Widget buildBottomBar(BuildContext context) => const SizedBox.shrink();

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      key: PageStorageKey(_pageIndex),
      header: buildHeader(context),
      bottomBar: buildBottomBar(context),
    );
  }

  Widget subtitle({required Widget content}) {
    return Builder(builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 14.0, bottom: 2.0),
        child: DefaultTextStyle(
          style: FluentTheme.of(context).typography.subtitle!,
          child: content,
        ),
      );
    });
  }
}

class EmptyPage extends Page {
  final Widget? child;

  EmptyPage([this.child]);

  @override
  Widget build(BuildContext context) {
    return child ?? const SizedBox.shrink();
  }
}

extension PageExtension on List<Page> {
  List<Widget> transform(BuildContext context) {
    return map((page) {
      return StreamBuilder(
        stream: page.stateStream,
        builder: (context, _) {
          return page.build(context);
        },
      );
    }).toList();
  }
}

extension WidgetPageExtension on Widget {
  Page toPage() {
    return EmptyPage(this);
  }
}
