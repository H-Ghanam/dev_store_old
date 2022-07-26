SELECT
    accounts.id,
    IFNULL(
        (
            SELECT
                SUM(grand_total)
            FROM
                invoices
            WHERE
                kind IN ("SALE", "RETURNSALE")
                AND account_id = 2
        ),
        0
    ) - IFNULL(
        (
            SELECT
                SUM(grand_total)
            FROM
                invoices
            WHERE
                kind IN ("PURCHASE", "RETURNPUR")
                AND account_id = 2
        ),
        0
    ) - IFNULL(
        (
            SELECT
                SUM(money_in) - SUM(money_out)
            FROM
                money
            WHERE
                affect_account = 1
                AND account_id = 2
        ),
        0
    ) AS balance,
    IFNULL(
        (
            SELECT
                SUM(amount)
            FROM
                money
            WHERE
                (
                    kind = "INSTAL_RECEIPT"
                    OR (
                        kind = "RECEIPT"
                        AND is_cheque = 1
                    )
                )
                AND is_liquid = 0
                AND is_closed = 0
                AND account_id = 2
        ),
        0
    ) AS instal_receipts,
    IFNULL(
        (
            SELECT
                SUM(amount)
            FROM
                money
            WHERE
                (
                    kind = "INSTAL_PAYMENT"
                    OR (
                        kind = "PAYMENT"
                        AND is_cheque = 1
                    )
                )
                AND is_liquid = 0
                AND is_closed = 0
                AND account_id = 2
        ),
        0
    ) AS instal_payments,
    last_sale.date1 AS last_sale_date,
    last_sale.grand_total AS last_sale_total,
    last_sale.id AS last_sale_id,
    last_receipt.date1 AS last_receipt_date,
    last_receipt.amount AS last_receipt_amount,
    last_receipt.id AS last_receipt_id
FROM
    accounts
    LEFT JOIN (
        SELECT
            account_id,
            id,
            date1,
            grand_total
        FROM
            invoices
        WHERE
            account_id = 2
            AND kind = "SALE"
        ORDER BY
            date1 DESC,
            time1 DESC
        LIMIT
            1
    ) last_sale ON last_sale.account_id = accounts.id
    LEFT JOIN (
        SELECT
            account_id,
            id,
            date1,
            amount
        FROM
            money
        WHERE
            account_id = 2
            AND kind IN("RECEIPT", "INSTAL_RECEIPT")
            AND (
                is_cheque = 1
                OR is_liquid = 1
            )
        ORDER BY
            date1 DESC,
            time1 DESC
        LIMIT
            1
    ) last_receipt ON last_receipt.account_id = accounts.id
WHERE
    accounts.id = 2;