import 'dart:convert';

import 'package:dev_store/models/options.dart';
import 'package:dev_store/models/user.dart';
import 'package:equatable/equatable.dart';

StartAppRespose startAppResposeFromJson(String str) =>
    StartAppRespose.fromJson(json.decode(str));

String startAppResposeToJson(StartAppRespose data) =>
    json.encode(data.toJson());

class StartAppRespose extends Equatable {
  const StartAppRespose({
    required this.resp,
    required this.message,
    required this.startApp,
  });

  final bool resp;
  final String message;
  final StartApp? startApp;

  factory StartAppRespose.fromJson(Map<String, dynamic> json) =>
      StartAppRespose(
        resp: json["resp"],
        message: json["message"],
        startApp: json["startApp"] != null
            ? StartApp.fromJson(json["startApp"])
            : null,
      );

  Map<String, dynamic> toJson() => {
        "resp": resp,
        "message": message,
        "startApp": startApp!.toJson(),
      };

  @override
  List<Object?> get props => [
        resp,
        message,
        startApp,
      ];
}

class StartApp extends Equatable {
  final int? version;
  final Options? options;
  final List<User>? activeUsers;

  const StartApp({this.version, this.options, this.activeUsers});

  factory StartApp.fromJson(Map<String, dynamic> json) => StartApp(
        version: json["version"],
        options: Options.fromJson(json["options"]),
        activeUsers: User.fromJsonArray(json["activeUsers"]),
      );

  Map<String, dynamic> toJson() =>
      {"version": version, "options": options, "activeUsers": activeUsers};

  @override
  List<Object?> get props => [
        version,
        options,
        activeUsers,
      ];
}
