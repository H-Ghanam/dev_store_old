import 'dart:convert';

import 'package:dev_store/Models/app_models/start_app_model.dart';
import 'package:dev_store/Services/urls.dart';
import 'package:http/http.dart' as http;

class AppServices {
  Future<StartAppModel> startApp() async {
    final resp = await http.get(Uri.parse('${URLS.urlApi}/app/start'),
        headers: {'Accept': 'application/json'});

    return StartAppModel.fromJson(jsonDecode(resp.body));
  }
}

final appServices = AppServices();
