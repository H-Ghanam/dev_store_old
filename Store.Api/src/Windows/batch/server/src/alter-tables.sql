use sahl1;

ALTER TABLE invoices_items 
RENAME TO  invoices_items1 ;

ALTER TABLE money 
RENAME TO  money1 ;


ALTER TABLE installments_parts 
RENAME TO  installments_parts1 ;





CREATE TABLE `money` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `kind` varchar(15) DEFAULT '',
  `id` int DEFAULT NULL,
  `parent_kind` varchar(15) DEFAULT '',
  `parent_id` int DEFAULT '0',
  `date1` date DEFAULT NULL,
  `time1` time DEFAULT NULL,
  `amount` decimal(13,3) DEFAULT '0.000',
  `money_in` decimal(13,3) DEFAULT '0.000',
  `money_out` decimal(13,3) DEFAULT '0.000',
  `account_id` int DEFAULT NULL,
  `account_category1` varchar(100) DEFAULT '',
  `category1` varchar(100) DEFAULT '',
  `category2` varchar(100) DEFAULT '',
  `cashbox_id` smallint DEFAULT NULL,
  `cashbox_fees` decimal(13,3) DEFAULT '0.000',
  `amount_net` decimal(13,3) DEFAULT '0.000',
  `cashbox_in` decimal(13,3) DEFAULT '0.000',
  `cashbox_out` decimal(13,3) DEFAULT '0.000',
  `due_date` date DEFAULT NULL,
  `is_closed` tinyint(1) DEFAULT '0',
  `is_cheque` tinyint(1) DEFAULT '0',
  `cheque_no` varchar(30) DEFAULT '',
  `cheque_bank` varchar(30) DEFAULT '',
  `reference` varchar(30) DEFAULT '',
  `more` varchar(500) DEFAULT '',
  `tax1_per` decimal(6,3) DEFAULT '0.000',
  `tax1` decimal(13,3) DEFAULT '0.000',
  `amount_taxed` decimal(13,3) DEFAULT '0.000',
  `is_liquid` tinyint(1) DEFAULT '0',
  `liquid_date` date DEFAULT NULL,
  `liquid_time` time DEFAULT NULL,
  `affect_account` tinyint(1) DEFAULT '0',
  `account_date` date DEFAULT NULL,
  `account_time` time DEFAULT NULL,
  `transfer_id` int DEFAULT NULL,
  `createdby_id` int DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `editedby_id` int DEFAULT NULL,
  `editedon` datetime DEFAULT NULL,
  PRIMARY KEY (`pk`),
  KEY `kind` (`kind`),
  KEY `kind_id` (`kind`,`id`),
  KEY `date1` (`date1`),
  KEY `date1_time1` (`date1`,`time1`),
  KEY `cashbox_id` (`cashbox_id`),
  KEY `account_id` (`account_id`),
  KEY `account_category1` (`account_category1`),
  KEY `category1` (`category1`),
  KEY `category2` (`category2`),
  KEY `reference` (`reference`),
  KEY `parent_kind_parent_id` (`parent_kind`,`parent_id`),
  KEY `affect_account` (`affect_account`),
  KEY `account_date` (`account_date`),
  KEY `account_date_account_time` (`account_date`,`account_time`),
  KEY `is_liquid` (`is_liquid`),
  KEY `liquid_date` (`liquid_date`),
  KEY `liquid_date_liquid_time` (`liquid_date`,`liquid_time`),
  KEY `due_date` (`due_date`),
  KEY `is_cheque` (`is_cheque`),
  KEY `createdby_id` (`createdby_id`),
  KEY `editedby_id` (`editedby_id`),
  KEY `is_closed` (`is_closed`)
) ENGINE=InnoDB AUTO_INCREMENT=72087 DEFAULT CHARSET=utf8;


CREATE TABLE `invoices_items` (
  `pk` int NOT NULL AUTO_INCREMENT,
  `kind` varchar(10) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `sn` int DEFAULT '0',
  `item_id` int DEFAULT NULL,
  `qty` decimal(16,6) DEFAULT '0.000000',
  `amount` decimal(15,5) DEFAULT '0.00000',
  `total` decimal(14,4) DEFAULT '0.0000',
  `amount_inc_tax` decimal(15,5) DEFAULT '0.00000',
  `total_inc_tax` decimal(14,4) DEFAULT '0.0000',
  `unit` varchar(20) DEFAULT '',
  `uqty1` decimal(8,3) unsigned NOT NULL DEFAULT '1.000',
  `uqty2` decimal(8,3) unsigned NOT NULL DEFAULT '1.000',
  `unit_qty_in` decimal(16,6) DEFAULT '0.000000',
  `unit_qty_out` decimal(16,6) DEFAULT '0.000000',
  `unit_cost` decimal(15,5) DEFAULT '0.00000',
  `unit_price` decimal(15,5) DEFAULT '0.00000',
  `total_cost` decimal(14,4) DEFAULT '0.0000',
  `total_price` decimal(14,4) DEFAULT '0.0000',
  `discount1_per` decimal(6,3) DEFAULT '0.000',
  `discount1` decimal(14,4) DEFAULT '0.0000',
  `total_inc_discount1` decimal(14,4) DEFAULT '0.0000',
  `additions` decimal(14,4) DEFAULT '0.0000',
  `discount2` decimal(14,4) DEFAULT '0.0000',
  `discounts` decimal(14,4) DEFAULT '0.0000',
  `net_cost` decimal(14,4) DEFAULT '0.0000',
  `net_price` decimal(14,4) DEFAULT '0.0000',
  `net_total` decimal(14,4) DEFAULT '0.0000',
  `qty_in` decimal(16,6) DEFAULT '0.000000',
  `qty_out` decimal(16,6) DEFAULT '0.000000',
  `cost` decimal(14,4) DEFAULT '0.0000',
  `price` decimal(14,4) DEFAULT '0.0000',
  `tax1_per` decimal(6,3) DEFAULT '0.000',
  `tax1` decimal(14,4) DEFAULT '0.0000',
  `tax2_per` decimal(6,3) DEFAULT '0.000',
  `tax2` decimal(14,4) DEFAULT '0.0000',
  `grand_total` decimal(14,4) DEFAULT '0.0000',
  `expenses` decimal(14,4) DEFAULT '0.0000',
  `real_net_cost` decimal(14,4) DEFAULT '0.0000',
  `real_cost` decimal(14,4) DEFAULT '0.0000',
  `profit` decimal(14,4) DEFAULT '0.0000',
  `cost_errors` decimal(14,4) DEFAULT '0.0000',
  `custom1` varchar(200) DEFAULT '',
  `custom2` varchar(200) DEFAULT '',
  `custom3` varchar(200) DEFAULT '',
  `serials` varchar(1000) DEFAULT '',
  `cargo` varchar(20) DEFAULT '',
  `qty_delivered` decimal(16,6) DEFAULT '0.000000',
  `unit_contents` decimal(13,3) NOT NULL DEFAULT '1.000',
  PRIMARY KEY (`pk`),
  KEY `kind` (`kind`),
  KEY `item_id` (`item_id`),
  KEY `store_id` (`store_id`),
  KEY `kind_id` (`kind`,`id`),
  KEY `store_id_item_id` (`store_id`,`item_id`),
  KEY `custom1` (`custom1`),
  KEY `custom2` (`custom2`),
  KEY `custom3` (`custom3`),
  KEY `kind_id_store_id` (`kind`,`id`,`store_id`),
  KEY `sn` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=206065 DEFAULT CHARSET=utf8;


CREATE TABLE `installments_parts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `installment_id` int DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `total` decimal(13,3) DEFAULT '0.000',
  `paid` decimal(13,3) DEFAULT '0.000',
  `unpaid` decimal(13,3) DEFAULT '0.000',
  `more` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `installment_id` (`installment_id`),
  KEY `date1` (`date1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
