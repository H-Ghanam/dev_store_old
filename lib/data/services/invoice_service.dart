import 'dart:io';
import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/data/services/urls.dart';
import 'package:dio/dio.dart';

Dio dio = Dio();

class InvoiceService {
  late Response response;
  Future<InvoiceRespose> getInvoice(
      {required num invoiceId,
      required String kind,
      required num storeId,
      required bool getOptions}) async {
    response = await dio.get(
      '${URLS.urlApi}/invoices/get',
      queryParameters: {
        "id": invoiceId,
        "kind": kind,
        "storeId": storeId,
        "getOptions": getOptions
      },
      options: Options(headers: {HttpHeaders.acceptHeader: 'application/json'}),
    );

    // final resp = await http.get(Uri.parse('${URLS.urlApi}/invoice/get'),
    //     headers: {'Accept': 'application/json'});

    // print(jsonDecode(response!.data));
    return InvoiceRespose.fromJson(response.data);
  }
}

final invoiceServices = InvoiceService();
