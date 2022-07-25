import 'package:dev_store/data/api/invoice_response.dart';
import 'package:dev_store/data/services/invoice_service.dart';

class TnvoiceRepositoryImpl implements InvoiceRepository {
  TnvoiceRepositoryImpl();

  InvoiceService invoiceService = InvoiceService();

  @override
  Future<InvoiceRespose> getInvoiceResponse(
    num invoiceId,
    String kind,
    num storeId,
    bool getOptions,
  ) async {
    final invoiceRespose = await invoiceService.getInvoice(
        invoiceId: invoiceId,
        kind: kind,
        storeId: storeId,
        getOptions: getOptions);

    return invoiceRespose;
  }
}

abstract class InvoiceRepository {
  Future<InvoiceRespose> getInvoiceResponse(
      num invoiceId, String kind, num storeId, bool getOptions);
}
