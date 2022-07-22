import 'dart:convert';

import 'package:dev_store/data/api/start_app_responses.dart';
import 'package:dev_store/data/services/urls.dart';
import 'package:http/http.dart' as http;

class AppService {
  Future<StartAppRespose> startApp() async {
    final resp = await http.get(Uri.parse('${URLS.urlApi}/app/start'),
        headers: {'Accept': 'application/json'});

    return StartAppRespose.fromJson(jsonDecode(resp.body));
  }
}

final appService = AppService();
