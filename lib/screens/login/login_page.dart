// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dev_store/blocs/app_bloc/app_bloc.dart';
import 'package:dev_store/data/api/start_app_responses.dart';
import 'package:dev_store/models/user.dart';
import 'package:dev_store/utilites/screen_settings.dart';
import 'package:fluent_ui/fluent_ui.dart' as f;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_manager/window_manager.dart';

int select = 0;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

late StartApp appData;

class _LoginState extends State<Login> {
  Color? _color = Colors.yellow[700];
  TextEditingController? _controller;
  FocusNode? txt1;

  void setMiniScreen() async {
    await windowManager.setSize(const Size(610, 500));
    await windowManager.center();
    await windowManager.setTitleBarStyle(
      TitleBarStyle.hidden,
      windowButtonVisibility: false,
    );
  }

  @override
  void initState() {
    super.initState();
    setMiniScreen();
    txt1 = FocusNode();
    _controller = TextEditingController(text: "");
    txt1!.addListener(() {
      // if(txt1!.hasFocus)_controller!.clear();
      if (txt1!.hasFocus) {
        _controller!.selection = TextSelection(
            baseOffset: 0, extentOffset: _controller!.text.length);
      }
    });

    setMiniScreen();
    BlocProvider.of<AppBloc>(context).add(OnAppStartEvent());
    ff = FocusNode();
  }

  @override
  void dispose() {
    txt1!.dispose();
    super.dispose();
  }

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  save() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      formdata.save();
    }
  }

  FocusNode? ff;

  void _f1(RawKeyEvent event) {
    if (select < appData.activeUsers!.length - 1 &&
        event.isKeyPressed(LogicalKeyboardKey.arrowDown)) {
      setState(() {
        select++;
      });
      print("${appData.activeUsers![select]}");
    } else if (select > 0 && event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
      setState(() {
        select--;
      });
      print("${appData.activeUsers![select]}");
    } else if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
      save();
      //pass is here
      // print("${allCharacters[select].acotrName}");
      //check on pass
      if (ss == appData.activeUsers![select].pass) {
        print("yes");
        // Navigator.pushNamed(context, '/start');
        setFullScreen();
        Navigator.of(context).pushNamed("/app");
      } else {
        showDialog(
            context: context,
            builder: (s) {
              return f.ContentDialog(
                content: f.Row(
                  children: const [
                    f.Icon(f.FluentIcons.warning),
                    Text('   كلمة السر غير صحيحة !'),
                  ],
                ),
                actions: [
                  f.Center(
                    child: f.FilledButton(
                      autofocus: true,
                      style: f.ButtonStyle(
                          backgroundColor:
                              f.ButtonState.all(f.Colors.yellow.darker)),
                      child: const Text(
                        'شكراً',
                        style: f.TextStyle(color: f.Colors.black),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        FocusScope.of(context).requestFocus(txt1);
                      },
                    ),
                  ),
                ],
              );
            });
        // print("no");
        // setState(() {
        //   pass = true;
        // });
      }
    }
  }

  String? ss;
  bool pass = false;

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      onKey: _f1,
      focusNode: ff!,
      child: Scaffold(body: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state is AppInitial) {
            return Center(child: Text('${state.startAppRespose}'));
          }
          if (state is AppLoadingState) {
            return const Center(child: CircleAvatar());
          }
          if (state is AppStartedState) {
            List<User>? users = state.startAppRespose.startApp!.activeUsers;
            return Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 7, 28, 61),
                            ),
                            width: 120,
                            height: 120,
                            child: Column(
                              children: [
                                Stack(children: [
                                  Center(
                                      child: Image.asset("assets/images/6.png",
                                          width: 100)),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(top: 88),
                                    child: const Text(
                                      "Wings",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 23,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "En"),
                                    ),
                                  )
                                ]),
                                // Icon(Icons.shopping_cart_outlined,
                                //     size: 80, color: Color.fromARGB(255, 255, 255, 255)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      "أهلاً وسهلاً",
                                      style: TextStyle(
                                          fontSize: 45, fontFamily: "Hind4"),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 194,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                "أسهل وأدق برنامج لإدارة المحلات والمخازن في العالم العربي",
                                style: TextStyle(
                                    fontSize: 17, fontFamily: "Hind4"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "إختر المستخدم",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 220,
                                height: 100,
                                decoration: BoxDecoration(
                                    border: Border.all(), color: Colors.white),
                                child: ListView.builder(
                                  itemCount: users!.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return BlocBuilder<AppBloc, AppState>(
                                      builder: (context, state) {
                                        if (state is AppStartedState) {
                                          appData =
                                              state.startAppRespose.startApp!;

                                          return MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  select = index;
                                                });
                                              },
                                              child: Container(
                                                  color: index == select
                                                      ? const Color.fromARGB(
                                                          255, 4, 113, 236)
                                                      : const Color.fromARGB(
                                                          255, 255, 255, 255),
                                                  child: Text(
                                                    " ${users[index].title}",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: index == select
                                                            ? Colors.white
                                                            : Colors.black),
                                                  )
                                                  // Text("${allCharacters[index].name}")
                                                  ),
                                            ),
                                          );
                                        } else {
                                          return Container();
                                        }
                                      },
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "كلمة السر",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              f.SizedBox(
                                width: 220,
                                height: 25,
                                child: Form(
                                  key: formstate,
                                  child: TextFormField(
                                    controller: _controller,
                                    focusNode: txt1,
                                    obscureText: true,
                                    autofocus: true,
                                    cursorWidth: 1,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Hind2",
                                      fontSize: 15,
                                      letterSpacing: 0.5,
                                    ),
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            right: 3, bottom: -15),
                                        border: OutlineInputBorder()),
                                    onSaved: (val) {
                                      setState(() {
                                        ss = val;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    save();
                                    //pass is here
                                    print("${users[select].pass}");
                                    //check on pass
                                    if (ss == users[select].pass) {
                                      print("yes");
                                      setFullScreen();
                                      Navigator.pushNamed(context, '/app');
                                    } else {
                                      print("no");
                                      pass = true;
                                      // Navigator.pushNamed(context, '/start');
                                    }
                                  },
                                  // Navigator.of(context).pushNamed('start'),
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onHover: (s) {
                                      setState(() {
                                        _color = Colors.yellow[400];
                                      });
                                    },
                                    onExit: (s) {
                                      setState(() {
                                        _color = Colors.yellow[700];
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: _color,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10))),
                                      width: 200,
                                      height: 155,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Icon(
                                          //   Icons.lock_open_sharp,
                                          //   size: 80,
                                          // ),
                                          Image.asset(
                                            "assets/images/lock2.png",
                                            width: 117,
                                          ),
                                          const Text("دخول النظام",
                                              style: TextStyle(
                                                  // fontWeight: FontWeight.w600,
                                                  fontSize: 24,
                                                  fontFamily: "Hind1"))
                                        ],
                                      ),
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      width: double.infinity,
                      height: 40,
                      color: Colors.blue,
                      child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[300]),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 30))),
                                  onPressed: () {
                                    // testWindowFunctions();
                                    f.Navigator.of(context)
                                        .pushNamed("/service");
                                    // f.Navigator.of(context).pop(MaterialPageRoute(builder: (f.BuildContext context)=>Service()));
                                  },
                                  child: const Text(
                                    "خدمة العملاء",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[300]),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 30))),
                                  onPressed: () {},
                                  child: const Text("السيرفر",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              const SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[300]),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 30))),
                                  onPressed: () {},
                                  child: const Text("الشركات",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              const SizedBox(
                                width: 5,
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[300]),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 15))),
                                  onPressed: () {},
                                  child: const Text("ع",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ))),
                              const Expanded(child: SizedBox()),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[300]),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      padding: MaterialStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 30))),
                                  onPressed: () {
                                    exit(0);
                                  },
                                  child: const Text("خروج",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600))),
                              const SizedBox(
                                width: 5,
                              )
                            ],
                          )),
                    )
                  ],
                )
              ],
            );
          }
          if (state is AppErrorState) {
            return Center(child: Text('${state.error}'));
          }
          return const Center(child: Text('non'));
        },
      )),
    );
  }
}
