// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dev_store/models/user.dart';
import 'package:dev_store/blocs/app_bloc/app_bloc.dart';
import 'package:dev_store/data/api/start_app_responses.dart';
import 'package:dev_store/utilites/screen_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

int select = 0;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

late StartApp appData;

class _LoginState extends State<Login> {
  Color? _color = Colors.yellow[700];

  @override
  void initState() {
    super.initState();

    setMiniScreen();
    BlocProvider.of<AppBloc>(context).add(OnAppStartEvent());
    ff = FocusNode();
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
      // if (ss == appData.activeUsers![select].pass) {
      print("yes");
      // Navigator.pushNamed(context, '/start');
      setFullScreen();
      Navigator.of(context).pushNamed("/app");
      // } else {
      //   print("no");
      //   setState(() {
      //     pass = true;
      //   });
      // }
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
            return Column(
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
                                      color: Color.fromARGB(255, 255, 255, 255),
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
                        width: 10,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              SizedBox(
                                width: 162,
                                child: Text(
                                  "أهلاً وسهلاً",
                                  style: TextStyle(
                                      fontSize: 50, fontFamily: "Hind1"),
                                ),
                              ),
                              SizedBox(
                                width: 194,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "أسهل وأدق برنامج لإدارة المحلات والمخازن في العالم العربي",
                            style: TextStyle(fontSize: 20, fontFamily: "Hind1"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "إختر المستخدم",
                          style: TextStyle(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 220,
                          height: 100,
                          decoration: BoxDecoration(border: Border.all()),
                          child: ListView.builder(
                            itemCount: users!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return BlocBuilder<AppBloc, AppState>(
                                builder: (context, state) {
                                  if (state is AppStartedState) {
                                    appData = state.startAppRespose.startApp!;

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
                                            child: Text("${users[index].title}")
                                            // Text("${allCharacters[index].name}")
                                            ),
                                      ),
                                    );
                                  } else {
                                    return Container();
                                  }
                                },
                              );
                              // GestureDetector(
                              //     onTap: () {
                              //       int cha = index;
                              //     },
                              //     child: Container(
                              //       width: 220,
                              //       height: 20,
                              // color: index == index
                              //     ? const Color.fromARGB(255, 4, 113, 236)
                              //     : const Color.fromARGB(255, 255, 255, 255),
                              //       child: Text("$index"),
                              //     ));
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("كلمة السر"),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 220,
                          height: 25,
                          child: Form(
                            key: formstate,
                            child: TextFormField(
                              obscureText: true,
                              autofocus: true,
                              decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(right: 0, bottom: -15),
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
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                const SizedBox(
                  height: 40,
                ),
                Visibility(
                  visible: pass,
                  child: Container(
                    color: Colors.yellow.shade200,
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "! تأكد من كلمة السر",
                          style: TextStyle(
                              fontFamily: "Hind3",
                              fontSize: 20,
                              color: Color.fromARGB(255, 255, 17, 0)),
                        ),
                      ],
                    ),
                  ),
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
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[300]),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 30))),
                              onPressed: () {
                                // testWindowFunctions();
                                Navigator.of(context).pushNamed("/filePickerDemo");
                              },
                              child: const Text(
                                "خدمة العملاء",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[300]),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 30))),
                              onPressed: () {},
                              child: const Text("السيرفر",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600))),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[300]),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 30))),
                              onPressed: () {},
                              child: const Text("الشركات",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600))),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[300]),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
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
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.grey[300]),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.symmetric(
                                          horizontal: 30))),
                              onPressed: () {
                                exit(0);
                              },
                              child: const Text("خروج",
                                  style:
                                      TextStyle(fontWeight: FontWeight.w600))),
                          const SizedBox(
                            width: 5,
                          )
                        ],
                      )),
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
