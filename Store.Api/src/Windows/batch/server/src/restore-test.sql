use sahl1;

set NAMES 'utf8';

LOAD DATA INFILE 'C:/Users/Administrator/_Work/Store/Programs/Sahl_Files/Data/Tables/csv/items.csv'
INTO TABLE items
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
	( id,
		title,
		code1,
		code2,
		barcode,
		barcodes,
		price1,
		price2,
		price3,
		price4,
		price_min,
		category1,
		category2,
		category3,
		category4,
		category5,
		category6,
		unit,
		service,
		avg_cost,
		last_cost,
		last_net_cost,
		@last_purchased,
		qty,
		reorder_qty,
		starred,
		discount_per1,
		tax_type,
		price_include_tax1,
		dead,
		photo,
		more )
        
    SET last_purchased = (STR_TO_DATE(@last_purchased, '%d-%m-%Y')); 