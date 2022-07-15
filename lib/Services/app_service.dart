import 'dart:convert';

import 'package:dev_store/Modules/App/responses/start_app.dart';
import 'package:dev_store/Modules/Invoice/Responses/invoice_response.dart';
import 'package:dev_store/Services/urls.dart';
import 'package:http/http.dart' as http;

class AppServices {
  Future<StartAppRespose> startApp() async {
    final resp = await http.get(Uri.parse('${URLS.urlApi}/app/start'),
        headers: {'Accept': 'application/json'});

    return StartAppRespose.fromJson(jsonDecode(resp.body));
  }

  Future<InvoiceRespose> getInvoice(int invoiceId) async {
    final resp = await http.get(Uri.parse('${URLS.urlApi}/invoices/get'),
        headers: {'Accept': 'application/json'});

    return InvoiceRespose.fromJson(jsonDecode(resp.body));
  }
}

final appServices = AppServices();
