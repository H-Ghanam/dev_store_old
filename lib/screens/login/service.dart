// import 'dart:io';
// import 'dart:ui';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as m;
// import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:window_manager/window_manager.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  Color _color1 = Colors.yellow.dark;
  Color _color2 = Colors.grey.withOpacity(0.15);
  Color _color3 = Colors.grey.withOpacity(0.15);
  Color _color4 = Colors.grey.withOpacity(0.15);

  String? _deviceId;

  void setMiniScreen() async {
    await windowManager.setSize(const Size(960, 695));
    await windowManager.center();
  }

  @override
  void initState() {
    super.initState();
    setMiniScreen();
    initPlatformState();

  }

  Future<void> initPlatformState() async {
    String? deviceId;

    try {
      deviceId = await PlatformDeviceId.getDeviceId;
    } on PlatformException {
      deviceId = 'Failed to get deviceId.';
    }

    if (!mounted) return;

    setState(() {
      _deviceId = deviceId;
      print("deviceId->$_deviceId");
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget container(image, text, color) {
      return Row(
        children: [
          Image.asset("assets/images/$image", width: (7 / 100) * size.width),
          SizedBox(
            width: (0.5 / 100) * size.width,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              width: (38 / 100) * size.width,
              height: (9 / 100) * size.height,
              alignment: Alignment.center,
              color: color,
              // Colors.grey.withOpacity(0.15),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: (1.4 / 100) * size.width,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Hind44"),
              ),
            ),
          )
        ],
      );
    }

    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          padding: EdgeInsets.all((1.3 / 100) * size.width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "أهلاً بكم في خدمة عملاء وينجز",
                style: TextStyle(fontSize: (2.2 / 100) * size.width),
              ),
              SizedBox(
                height: (4 / 100) * size.height,
              ),
              Text(
                "مسئولي خدمة العملاء",
                style: TextStyle(
                    fontSize: (1.7 / 100) * size.width, color: Colors.blue),
              ),
              SizedBox(
                height: (1 / 100) * size.height,
              ),
              MouseRegion(
                  // onEnter: (event) {
                  //   setState(() {
                  //     _color1 = Colors.yellow.dark;
                  //   });
                  // },
                  // onExit: (e) {
                  //   setState(() {
                  //     _color1 = Colors.grey.withOpacity(0.15);
                  //   });
                  // },
                  child: container(
                    "19.png",
                    "التحدث إلى أحد مسئولي خدمة العملاء",
                    _color1,
                  )),
              SizedBox(
                height: (3.5 / 100) * size.height,
              ),
              Text(
                "التحكم عن بعد",
                style: TextStyle(
                    fontSize: (1.7 / 100) * size.width, color: Colors.blue),
              ),
              SizedBox(
                height: (1 / 100) * size.height,
              ),
              Text.rich(
                TextSpan(
                    text:
                        "أحياناً يحتاج مسئولي خدمة العملاء للتحكم بهذا الجهاز ليمكنة خدمتكم بشكل أفضل تأكد أولاً من توفر اتصال انترنت جيد",
                    style: TextStyle(
                        fontSize: (1.4 / 100) * size.width,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: ""),
                    children: [
                      TextSpan(
                        text: "\nإبدأ برنامج التحكم عن بعد",
                        style: TextStyle(
                            fontSize: (1.4 / 100) * size.width,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: ""),
                      ),
                      TextSpan(
                        text:
                            "\nثم ارسل لنا رقم الهوية وكلمة السر اللذان يظهران أمامك",
                        style: TextStyle(
                            fontSize: (1.4 / 100) * size.width,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: ""),
                      )
                    ]),
              ),
              SizedBox(
                height: (1.5 / 100) * size.height,
              ),
              MouseRegion(
                onEnter: (event) {
                  setState(() {
                    _color2 = Colors.yellow.dark;
                  });
                },
                onExit: (e) {
                  setState(() {
                    _color2 = Colors.grey.withOpacity(0.15);
                  });
                },
                child: container(
                  "16.jpg",
                  "تشغيل برنامج التحكم عن بعد TeamViewer",
                  _color2,
                ),
              ),
              SizedBox(
                height: (1 / 100) * size.height,
              ),
              MouseRegion(
                onEnter: (event) {
                  setState(() {
                    _color3 = Colors.yellow.dark;
                  });
                },
                onExit: (e) {
                  setState(() {
                    _color3 = Colors.grey.withOpacity(0.15);
                  });
                },
                child: container(
                  "17.png",
                  "تشغيل برنامج التحكم عن بعد AnyDesk",
                  _color3,
                ),
              ),
              SizedBox(
                height: (3.5 / 100) * size.height,
              ),
              Text(
                "مقترح أو شكوى",
                style: TextStyle(
                    fontSize: (1.7 / 100) * size.width, color: Colors.blue),
              ),
              SizedBox(
                height: (1 / 100) * size.height,
              ),
              MouseRegion(
                onEnter: (event) {
                  setState(() {
                    _color4 = Colors.yellow.dark;
                  });
                },
                onExit: (e) {
                  setState(() {
                    _color4 = Colors.grey.withOpacity(0.15);
                  });
                },
                child: container(
                  "18.png",
                  "إرسال مقترح أو شكوى",
                  _color4,
                ),
              ),
              SizedBox(
                height: (1 / 100) * size.height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/6.png",
                        width: (4 / 100) * size.width,
                      ),
                      SizedBox(
                        width: (0.5 / 100) * size.width,
                      ),
                      Text("www.Wings.com",
                          style: TextStyle(
                              fontSize: (1.3 / 100) * size.width,
                              color: Colors.black,
                              fontFamily: "",
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/6.png",
                        width: (4 / 100) * size.width,
                      ),
                      SizedBox(
                        width: (0.5 / 100) * size.width,
                      ),
                      Text(
                        "Wings@gmail.com",
                        style: TextStyle(
                            fontSize: (1.3 / 100) * size.width,
                            color: Colors.black,
                            fontFamily: "",
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/6.png",
                        width: (4 / 100) * size.width,
                      ),
                      SizedBox(
                        width: (0.5 / 100) * size.width,
                      ),
                      Image.asset(
                        "assets/images/6.png",
                        width: (4 / 100) * size.width,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: (3.5 / 100) * size.height,
              ),
              Text(
                "كود الجهاز",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "",
                    fontSize: (1.3 / 100) * size.width),
              ),
              SizedBox(
                height: (0.5 / 100) * size.height,
              ),
              Container(
                width: (45 / 100) * size.width,
                height: (3.4 / 100) * size.height,
                color: Colors.grey.withOpacity(0.3),
                alignment: Alignment.center,
                child: Text(
                  "$_deviceId",
                  style: TextStyle(
                      fontFamily: "",
                      fontSize: (1.4 / 100) * size.width,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: double.infinity,
          color: Colors.grey[10],
          padding: EdgeInsets.all((0.7 / 100) * size.width),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Button(
                      style: ButtonStyle(
                          padding: ButtonState.all(EdgeInsets.symmetric(
                              horizontal: (3.6 / 100) * size.width,
                              vertical: (0.6 / 100) * size.height)),
                          backgroundColor: ButtonState.all(Colors.grey[30])),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                      child: Row(
                        children: [
                          Icon(
                            m.Icons.settings_power_outlined,
                            size: (2.1 / 100) * size.width,
                          ),
                          Text(
                            "إغلاق",
                            style: TextStyle(
                                fontFamily: "",
                                fontWeight: FontWeight.w600,
                                fontSize: (1.3 / 100) * size.width),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
