import 'dart:convert';

import 'package:dev_store/Entities/options.dart';
import 'package:dev_store/Entities/user.dart';

StartAppModel startAppModelFromJson(String str) =>
    StartAppModel.fromJson(json.decode(str));

String startAppModelToJson(StartAppModel data) => json.encode(data.toJson());

class StartAppModel {
  StartAppModel({
    required this.resp,
    required this.message,
    required this.startApp,
  });

  bool resp;
  String message;
  StartApp startApp;

  factory StartAppModel.fromJson(Map<String, dynamic> json) => StartAppModel(
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
