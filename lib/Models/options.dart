import 'package:equatable/equatable.dart';

class Options extends Equatable {
  final num? version;
  final String? company;
  final String? backupPass;
  final String? superPass;
  final String? contactDetails;
  final String? contactDetails2;
  final String? contactDetails3;
  final String? price1Title;
  final String? price2Title;
  final String? price3Title;
  final String? price4Title;
  final num? forceLastAccountSalesPrice;
  final num? forceLastAccountSalesPriceMonths;
  final String? category2title;
  final String? category3title;
  final String? category4title;
  final String? category5title;
  final String? category6title;
  final String? accCustom2;
  final String? accCustom3;
  final String? accCustom4;
  final String? accCustom5;
  final String? accCustom6;
  final String? invoiceCustom1;
  final String? invoiceCustom2;
  final String? invoiceCustom3;
  final String? invoiceCustom4;
  final String? invoiceCustom5;
  final String? invoiceAddition2Sale;
  final num? invoiceAddition2SalePer;
  final num? invoiceAddition2SaleAmount;
  final String? invoiceAddition3Sale;
  final num? invoiceAddition3SalePer;
  final num? invoiceAddition3SaleAmount;
  final String? invoiceAddition2Pur;
  final String? invoiceAddition3Pur;
  final String? invoiceItemsCustom1;
  final String? invoiceItemsCustom2;
  final String? invoiceItemsCustom3;
  final num? salesPrintCopies;
  final String? orderStatus;
  final String? orderShippedby;
  final String? currencyTitle;
  final num? currencyUnits;
  final String? currencyUnitTitle;
  final String? currencySymbol;
  final num? wbarcodeEnabled;
  final num? wbarcodeSize;
  final String? wbarcodePrefix;
  final num? wbarcodeCodeSize;
  final num? wbarcodeValueSize;
  final String? taxId;
  final String? tax1Title;
  final num? tax1Per;
  final num? tax1AutoSale;
  final num? tax1AutoPurchase;
  final String? tax2Title;
  final num? tax2Per;
  final num? tax2AutoSale;
  final num? tax2AutoPurchase;
  final String? blockUpdateBeforeDate;
  final String? blockListBeforeDate;
  final num? deliverySalesAuto;
  final num? deliveryTransfersAuto;

  const Options(
      {this.version,
      this.company,
      this.backupPass,
      this.superPass,
      this.contactDetails,
      this.contactDetails2,
      this.contactDetails3,
      this.price1Title,
      this.price2Title,
      this.price3Title,
      this.price4Title,
      this.forceLastAccountSalesPrice,
      this.forceLastAccountSalesPriceMonths,
      this.category2title,
      this.category3title,
      this.category4title,
      this.category5title,
      this.category6title,
      this.accCustom2,
      this.accCustom3,
      this.accCustom4,
      this.accCustom5,
      this.accCustom6,
      this.invoiceCustom1,
      this.invoiceCustom2,
      this.invoiceCustom3,
      this.invoiceCustom4,
      this.invoiceCustom5,
      this.invoiceAddition2Sale,
      this.invoiceAddition2SalePer,
      this.invoiceAddition2SaleAmount,
      this.invoiceAddition3Sale,
      this.invoiceAddition3SalePer,
      this.invoiceAddition3SaleAmount,
      this.invoiceAddition2Pur,
      this.invoiceAddition3Pur,
      this.invoiceItemsCustom1,
      this.invoiceItemsCustom2,
      this.invoiceItemsCustom3,
      this.salesPrintCopies,
      this.orderStatus,
      this.orderShippedby,
      this.currencyTitle,
      this.currencyUnits,
      this.currencyUnitTitle,
      this.currencySymbol,
      this.wbarcodeEnabled,
      this.wbarcodeSize,
      this.wbarcodePrefix,
      this.wbarcodeCodeSize,
      this.wbarcodeValueSize,
      this.taxId,
      this.tax1Title,
      this.tax1Per,
      this.tax1AutoSale,
      this.tax1AutoPurchase,
      this.tax2Title,
      this.tax2Per,
      this.tax2AutoSale,
      this.tax2AutoPurchase,
      this.blockUpdateBeforeDate,
      this.blockListBeforeDate,
      this.deliverySalesAuto,
      this.deliveryTransfersAuto});

  factory Options.fromJson(Map<String, dynamic> json) {
    return Options(
        version: json['version'],
        company: json['company'],
        backupPass: json['backup_pass'],
        superPass: json['super_pass'],
        contactDetails: json['contact_details'],
        contactDetails2: json['contact_details2'],
        contactDetails3: json['contact_details3'],
        price1Title: json['price1_title'],
        price2Title: json['price2_title'],
        price3Title: json['price3_title'],
        price4Title: json['price4_title'],
        forceLastAccountSalesPrice: json['force_last_account_sales_price'],
        forceLastAccountSalesPriceMonths:
            json['force_last_account_sales_price_months'],
        category2title: json['category2title'],
        category3title: json['category3title'],
        category4title: json['category4title'],
        category5title: json['category5title'],
        category6title: json['category6title'],
        accCustom2: json['acc_custom2'],
        accCustom3: json['acc_custom3'],
        accCustom4: json['acc_custom4'],
        accCustom5: json['acc_custom5'],
        accCustom6: json['acc_custom6'],
        invoiceCustom1: json['invoice_custom1'],
        invoiceCustom2: json['invoice_custom2'],
        invoiceCustom3: json['invoice_custom3'],
        invoiceCustom4: json['invoice_custom4'],
        invoiceCustom5: json['invoice_custom5'],
        invoiceAddition2Sale: json['invoice_addition2_sale'],
        invoiceAddition2SalePer: json['invoice_addition2_sale_per'],
        invoiceAddition2SaleAmount: json['invoice_addition2_sale_amount'],
        invoiceAddition3Sale: json['invoice_addition3_sale'],
        invoiceAddition3SalePer: json['invoice_addition3_sale_per'],
        invoiceAddition3SaleAmount: json['invoice_addition3_sale_amount'],
        invoiceAddition2Pur: json['invoice_addition2_pur'],
        invoiceAddition3Pur: json['invoice_addition3_pur'],
        invoiceItemsCustom1: json['invoice_items_custom1'],
        invoiceItemsCustom2: json['invoice_items_custom2'],
        invoiceItemsCustom3: json['invoice_items_custom3'],
        salesPrintCopies: json['sales_print_copies'],
        orderStatus: json['order_status'],
        orderShippedby: json['order_shippedby'],
        currencyTitle: json['currency_title'],
        currencyUnits: json['currency_units'],
        currencyUnitTitle: json['currency_unit_title'],
        currencySymbol: json['currency_symbol'],
        wbarcodeEnabled: json['wbarcode_enabled'],
        wbarcodeSize: json['wbarcode_size'],
        wbarcodePrefix: json['wbarcode_prefix'],
        wbarcodeCodeSize: json['wbarcode_code_size'],
        wbarcodeValueSize: json['wbarcode_value_size'],
        taxId: json['tax_id'],
        tax1Title: json['tax1_title'],
        tax1Per: json['tax1_per'],
        tax1AutoSale: json['tax1_auto_sale'],
        tax1AutoPurchase: json['tax1_auto_purchase'],
        tax2Title: json['tax2_title'],
        tax2Per: json['tax2_per'],
        tax2AutoSale: json['tax2_auto_sale'],
        tax2AutoPurchase: json['tax2_auto_purchase'],
        blockUpdateBeforeDate: json['block_update_before_date'],
        blockListBeforeDate: json['block_list_before_date'],
        deliverySalesAuto: json['delivery_sales_auto'],
        deliveryTransfersAuto: json['delivery_transfers_auto']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['version'] = version;
    data['company'] = company;
    data['backup_pass'] = backupPass;
    data['super_pass'] = superPass;
    data['contact_details'] = contactDetails;
    data['contact_details2'] = contactDetails2;
    data['contact_details3'] = contactDetails3;
    data['price1_title'] = price1Title;
    data['price2_title'] = price2Title;
    data['price3_title'] = price3Title;
    data['price4_title'] = price4Title;
    data['force_last_account_sales_price'] = forceLastAccountSalesPrice;
    data['force_last_account_sales_price_months'] =
        forceLastAccountSalesPriceMonths;
    data['category2title'] = category2title;
    data['category3title'] = category3title;
    data['category4title'] = category4title;
    data['category5title'] = category5title;
    data['category6title'] = category6title;
    data['acc_custom2'] = accCustom2;
    data['acc_custom3'] = accCustom3;
    data['acc_custom4'] = accCustom4;
    data['acc_custom5'] = accCustom5;
    data['acc_custom6'] = accCustom6;
    data['invoice_custom1'] = invoiceCustom1;
    data['invoice_custom2'] = invoiceCustom2;
    data['invoice_custom3'] = invoiceCustom3;
    data['invoice_custom4'] = invoiceCustom4;
    data['invoice_custom5'] = invoiceCustom5;
    data['invoice_addition2_sale'] = invoiceAddition2Sale;
    data['invoice_addition2_sale_per'] = invoiceAddition2SalePer;
    data['invoice_addition2_sale_amount'] = invoiceAddition2SaleAmount;
    data['invoice_addition3_sale'] = invoiceAddition3Sale;
    data['invoice_addition3_sale_per'] = invoiceAddition3SalePer;
    data['invoice_addition3_sale_amount'] = invoiceAddition3SaleAmount;
    data['invoice_addition2_pur'] = invoiceAddition2Pur;
    data['invoice_addition3_pur'] = invoiceAddition3Pur;
    data['invoice_items_custom1'] = invoiceItemsCustom1;
    data['invoice_items_custom2'] = invoiceItemsCustom2;
    data['invoice_items_custom3'] = invoiceItemsCustom3;
    data['sales_print_copies'] = salesPrintCopies;
    data['order_status'] = orderStatus;
    data['order_shippedby'] = orderShippedby;
    data['currency_title'] = currencyTitle;
    data['currency_units'] = currencyUnits;
    data['currency_unit_title'] = currencyUnitTitle;
    data['currency_symbol'] = currencySymbol;
    data['wbarcode_enabled'] = wbarcodeEnabled;
    data['wbarcode_size'] = wbarcodeSize;
    data['wbarcode_prefix'] = wbarcodePrefix;
    data['wbarcode_code_size'] = wbarcodeCodeSize;
    data['wbarcode_value_size'] = wbarcodeValueSize;
    data['tax_id'] = taxId;
    data['tax1_title'] = tax1Title;
    data['tax1_per'] = tax1Per;
    data['tax1_auto_sale'] = tax1AutoSale;
    data['tax1_auto_purchase'] = tax1AutoPurchase;
    data['tax2_title'] = tax2Title;
    data['tax2_per'] = tax2Per;
    data['tax2_auto_sale'] = tax2AutoSale;
    data['tax2_auto_purchase'] = tax2AutoPurchase;
    data['block_update_before_date'] = blockUpdateBeforeDate;
    data['block_list_before_date'] = blockListBeforeDate;
    data['delivery_sales_auto'] = deliverySalesAuto;
    data['delivery_transfers_auto'] = deliveryTransfersAuto;
    return data;
  }

  @override
  List<Object?> get props => [
        version,
        company,
        backupPass,
        superPass,
        contactDetails,
        contactDetails2,
        contactDetails3,
        price1Title,
        price2Title,
        price3Title,
        price4Title,
        forceLastAccountSalesPrice,
        forceLastAccountSalesPriceMonths,
        category2title,
        category3title,
        category4title,
        category5title,
        category6title,
        accCustom2,
        accCustom3,
        accCustom4,
        accCustom5,
        accCustom6,
        invoiceCustom1,
        invoiceCustom2,
        invoiceCustom3,
        invoiceCustom4,
        invoiceCustom5,
        invoiceAddition2Sale,
        invoiceAddition2SalePer,
        invoiceAddition2SaleAmount,
        invoiceAddition3Sale,
        invoiceAddition3SalePer,
        invoiceAddition3SaleAmount,
        invoiceAddition2Pur,
        invoiceAddition3Pur,
        invoiceItemsCustom1,
        invoiceItemsCustom2,
        invoiceItemsCustom3,
        salesPrintCopies,
        orderStatus,
        orderShippedby,
        currencyTitle,
        currencyUnits,
        currencyUnitTitle,
        currencySymbol,
        wbarcodeEnabled,
        wbarcodeSize,
        wbarcodePrefix,
        wbarcodeCodeSize,
        wbarcodeValueSize,
        taxId,
        tax1Title,
        tax1Per,
        tax1AutoSale,
        tax1AutoPurchase,
        tax2Title,
        tax2Per,
        tax2AutoSale,
        tax2AutoPurchase,
        blockUpdateBeforeDate,
        blockListBeforeDate,
        deliverySalesAuto,
        deliveryTransfersAuto
      ];
}
