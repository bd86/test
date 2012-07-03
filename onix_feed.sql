ONIX SQL

TITLE AND SUPPLIER
------
SELECT `a`.`title_text`,`b`.`supplier_name`
FROM `onix_titles` as `a`, `onix_supply_detail` as `b`
WHERE `a`.`products_id` = `b`.`products_id`
-----

WITH PRICE
------
SELECT `a`.`title_text`,`b`.`supplier_name`,`c`.`price_amount`
FROM `onix_titles` as `a`, `onix_supply_detail` as `b`,`onix_prices` as `c`
WHERE `a`.`products_id` = `b`.`products_id` AND `a`.`id` = `c`.`supply_detail_id`
-----

SELECT `a`.`title_text`,`c`.`price_amount`,`d`.`value`,`b`.`supplier_name`
FROM `onix_titles` as `a`, `onix_supply_detail` as `b`,`onix_prices` as `c`,`onix_product_identifiers` as `d`
WHERE `a`.`products_id` = `b`.`products_id` AND `a`.`id` = `c`.`supply_detail_id` AND `a`.`products_id` = `d`.`products_id` AND `d`.`type` = 15

SELECT `a`.`title_text`,`e`.`product_form_description`,`c`.`price_amount`,`d`.`value`,`b`.`supplier_name`
FROM `onix_titles` as `a`, `onix_supply_detail` as `b`,`onix_prices` as `c`,`onix_product_identifiers` as `d`,`onix_products` as `e`
WHERE `a`.`products_id` = `b`.`products_id` AND `a`.`id` = `c`.`supply_detail_id` AND `a`.`products_id` = `d`.`products_id` AND `d`.`type` = 15 AND `e`.`id` = `a`.`products_id`




FINAL?
--------
SELECT `a`.`title_text`,`e`.`product_form_description`,`e`.`number_of_pages`,`c`.`price_amount`,`e`.`publication_date`,`d`.`value`,`f`.`text`
FROM `onix_titles` as `a`, `onix_supply_detail` as `b`,`onix_prices` as `c`,`onix_product_identifiers` as `d`,`onix_products` as `e`,`onix_othertext` as `f`
WHERE `a`.`products_id` = `b`.`products_id` AND `a`.`id` = `c`.`supply_detail_id` AND `a`.`products_id` = `d`.`products_id` AND `d`.`type` = 15 AND `e`.`id` = `a`.`products_id` AND `f`.`products_id` = `a`.`products_id` AND `f`.`type_code` = 01
--------

JQUERY SHOW HIDE SUMMARY
$('.more').hover(function(){$(this).siblings('div').show()},function(){$(this).siblings('div').hide();});