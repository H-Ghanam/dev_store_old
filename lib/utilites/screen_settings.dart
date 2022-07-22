import 'package:window_manager/window_manager.dart';

void setFullScreen() async {
  await windowManager.restore();
  // await windowManager.show();
  // await windowManager.setPreventClose(true);
  // await windowManager.setSkipTaskbar(false);
  await windowManager.setFullScreen(true);
}

void setMiniScreen() async {
  // await windowManager.setSize(const Size(610, 500));
  // await windowManager.setMaximumSize(const Size(610, 500));
  // await windowManager.setMinimumSize(const Size(610, 500));
  await windowManager.center();
  await windowManager.show();
  await windowManager.setPreventClose(true);
  await windowManager.setSkipTaskbar(false);
  await windowManager.setFullScreen(false);
}
