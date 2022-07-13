// ignore_for_file: unnecessary_const

import 'package:fluent_ui/fluent_ui.dart';

class HomeW extends StatefulWidget {
  const HomeW({Key? key}) : super(key: key);

  @override
  State<HomeW> createState() => _HomeWState();
}

class _HomeWState extends State<HomeW> {
  bool _visible = false;
  bool _visible1 = false;
  bool _visible2 = false;
  bool _visible3 = false;
  bool _visible4 = false;
  bool _visible5 = false;
  bool _visible6 = false;
  bool _visible7 = false;
  bool _visible8 = false;
  bool _visible9 = false;
  bool _visible10 = false;
  bool _visible11 = false;
  bool _visible12 = false;
  bool _visible13 = false;
  bool _visible14 = false;
  bool _visible15 = false;
  bool _visible16 = false;
  bool _visible17 = false;
  bool _visible18 = false;
  bool _visible19 = false;
  bool _visible20 = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.magenta, Colors.magenta.lightest])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  البضاعة",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/boxes.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible = false;
                  });
                },
                child: Visibility(
                  visible: _visible,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (e) {
                  setState(() {
                    _visible1 = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 0, 156, 177),
                    Colors.blue.lightest
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  الحسابات",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/man.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible1 = false;
                  });
                },
                child: Visibility(
                  visible: _visible1,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible2 = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(colors: [
                    Colors.warningPrimaryColor,
                    Color.fromARGB(255, 255, 151, 113)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  الخزينة",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/money.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible2 = false;
                  });
                },
                child: Visibility(
                  visible: _visible2,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible3 = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 255, 203, 255),
                    Colors.blue.lightest
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  الفواتير",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/bill.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible3 = false;
                  });
                },
                child: Visibility(
                  visible: _visible3,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible4 = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 255, 115, 0),
                    Color.fromARGB(255, 253, 214, 43),
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  التقارير",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/statistics.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible4 = false;
                  });
                },
                child: Visibility(
                  visible: _visible4,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width / 1.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "إبدأ بمشاهدة الجولة السريعة ",
                    style: const TextStyle(fontFamily: "Hind4", fontSize: 22),
                  ),
                  Image.asset(
                    "assets/images/10.png",
                    width: 40,
                  )
                ],
              ),
              SizedBox(
                width: size.width / 3.05,
              ),
              Row(
                children: [
                  const Text("تقارير ",
                      style: TextStyle(fontFamily: "Hind4", fontSize: 22)),
                  Image.asset(
                    "assets/images/10.png",
                    width: 40,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible5 = true;
                  });
                },
                child: Container(
                  width: size.width / 9,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(colors: [
                    Color.fromARGB(249, 4, 156, 29),
                    Color.fromARGB(169, 191, 255, 172)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  أهلاً بكم",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/usher.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible5 = false;
                  });
                },
                child: Visibility(
                  visible: _visible5,
                  child: Container(
                    width: size.width / 9,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible6 = true;
                  });
                },
                child: Container(
                  width: size.width / 9,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(248, 240, 30, 2),
                    Color.fromARGB(169, 255, 159, 159)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  إعداد وينجز",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/note.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible6 = false;
                  });
                },
                child: Visibility(
                  visible: _visible6,
                  child: Container(
                    width: size.width / 9,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible7 = true;
                  });
                },
                child: Container(
                  width: size.width / 9,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(colors: [
                    const Color.fromARGB(248, 85, 2, 240),
                    Color.fromARGB(169, 198, 173, 245)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  إدخال الأصناف",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/writing.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible7 = false;
                  });
                },
                child: Visibility(
                  visible: _visible7,
                  child: Container(
                    width: size.width / 9,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible8 = true;
                  });
                },
                child: Container(
                  width: size.width / 9,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(248, 3, 19, 231),
                    const Color.fromARGB(169, 198, 201, 247)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  إدخال الحسابات",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/manager.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible8 = false;
                  });
                },
                child: Visibility(
                  visible: _visible8,
                  child: Container(
                    width: size.width / 9,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible9 = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(colors: [
                    const Color.fromARGB(248, 187, 255, 0),
                    Color.fromARGB(169, 239, 255, 148)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  الحركة اليومية",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/8.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible9 = false;
                  });
                },
                child: Visibility(
                  visible: _visible9,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible10 = true;
                  });
                },
                child: Container(
                  width: size.width / 6.7,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(colors: [
                    Color.fromARGB(248, 214, 69, 1),
                    Color.fromARGB(169, 235, 155, 108)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  تحليل المبيعات",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/9.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible10 = false;
                  });
                },
                child: Visibility(
                  visible: _visible10,
                  child: Container(
                    width: size.width / 6.7,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: size.width / 1.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "حدد نوع المستند ",
                    style: TextStyle(fontFamily: "Hind4", fontSize: 22),
                  ),
                  Image.asset(
                    "assets/images/10.png",
                    width: 40,
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible11 = true;
                  });
                },
                child: Container(
                  width: size.width / 4.5,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(248, 8, 214, 1),
                    Color.fromARGB(255, 95, 231, 4)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  بيع",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/sale.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible11 = false;
                  });
                },
                child: Visibility(
                  visible: _visible11,
                  child: Container(
                    width: size.width / 4.5,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible12 = true;
                  });
                },
                child: Container(
                  width: size.width / 4.5,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 172, 5, 5),
                    Color.fromARGB(255, 223, 34, 34)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  شراء",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/buy.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible12 = false;
                  });
                },
                child: Visibility(
                  visible: _visible12,
                  child: Container(
                    width: size.width / 4.5,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible13 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 231, 83, 83),
                    Color.fromARGB(169, 241, 146, 146)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  صرف",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/coin.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible13 = false;
                  });
                },
                child: Visibility(
                  visible: _visible13,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible14 = true;
                  });
                },
                child: Container(
                  width: size.width / 4.5,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: const LinearGradient(colors: [
                    Color.fromARGB(248, 1, 214, 214),
                    Color.fromARGB(255, 130, 208, 211)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  جرد مخزن",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/writing.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible14 = false;
                  });
                },
                child: Visibility(
                  visible: _visible14,
                  child: Container(
                    width: size.width / 4.5,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ])
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible15 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 11, 221, 91),
                    Color.fromARGB(169, 142, 250, 147)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  مرتجع بيع",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/11.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible15 = false;
                  });
                },
                child: Visibility(
                  visible: _visible15,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible16 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 21, 235, 153),
                    Color.fromARGB(248, 67, 236, 194)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  عرض أسعار",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/calc.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible16 = false;
                  });
                },
                child: Visibility(
                  visible: _visible16,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible17 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 116, 28, 28),
                    Color.fromARGB(169, 184, 31, 31)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  مرتجع شراء",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/11.png",
                        width: 102,
                        matchTextDirection: true,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible17 = false;
                  });
                },
                child: Visibility(
                  visible: _visible17,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            SizedBox(
              width: size.width / 4.1,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible18 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 33, 177, 14),
                    Color.fromARGB(169, 127, 243, 127)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  قبض",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/cash.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible18 = false;
                  });
                },
                child: Visibility(
                  visible: _visible18,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible19 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 21, 235, 153),
                    Color.fromARGB(248, 67, 236, 194)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  تحويل لمخزن",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/truck.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible19 = false;
                  });
                },
                child: Visibility(
                  visible: _visible19,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              width: 8,
            ),
            Stack(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onHover: (event) {
                  setState(() {
                    _visible20 = true;
                  });
                },
                child: Container(
                  width: size.width / 12,
                  height: 140,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 108, 187, 17),
                    Color.fromARGB(169, 127, 231, 8)
                  ])),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "  تسوية مخزن",
                            style: TextStyle(fontFamily: "Hind3", fontSize: 23),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/scale.png",
                        width: 102,
                      )
                    ],
                  ),
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                onExit: (e) {
                  setState(() {
                    _visible20 = false;
                  });
                },
                child: Visibility(
                  visible: _visible20,
                  child: Container(
                    width: size.width / 12,
                    height: 140,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
