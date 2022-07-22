import 'dart:convert';

import 'package:dev_store/models/options.dart';
import 'package:dev_store/models/user.dart';

StartAppRespose startAppResposeFromJson(String str) =>
    StartAppRespose.fromJson(json.decode(str));

String startAppResposeToJson(StartAppRespose data) =>
    json.encode(data.toJson());

class StartAppRespose {
  StartAppRespose({
    required this.resp,
    required this.message,
    required this.startApp,
  });

  bool resp;
  String message;
  StartApp startApp;

  factory StartAppRespose.fromJson(Map<String, dynamic> json) =>
      StartAppRespose(
        resp: json["resp"],
        message: json["message"],
        startApp: StartApp.fromJson(json["startApp"]),
      );

  Map<String, dynamic> toJson() => {
        "resp": resp,
        "message": message,
        "startApp": startApp.toJson(),
      };
}

class StartApp {
  int? version;
  Options? options;
  List<User>? activeUsers;

  StartApp({this.version, this.options, this.activeUsers});

  factory StartApp.fromJson(Map<String, dynamic> json) => StartApp(
        version: json["version"],
        options: Options.fromJson(json["options"]),
        activeUsers: User.fromJsonArray(json["activeUsers"]),
      );

  Map<String, dynamic> toJson() =>
      {"version": version, "options": options, "activeUsers": activeUsers};
}
