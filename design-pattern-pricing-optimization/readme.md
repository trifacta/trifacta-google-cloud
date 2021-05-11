# Analytics Framework for Data-driven Pricing Strategy & Optimization

The goal of [this guide](technical_guide.md) is to provide a scalable framework to design an analytics solution to drive pricing analysis and optimization thanks to a Common Data Model (CDM), reports and ML examples based on BigQuery, BigQuery ML, Dataprep, and Looker.

## Sample Data & Resources

* [Dataprep Pricing Optimization Flow](flow_Pricing_Optimization_Design_Pattern.zip)
* [Tableau Sample Dashboard](TableauPricingOptimizationDashboard.twbx)
* [Google Sheets - Transaction Data](https://docs.google.com/spreadsheets/d/1r9970KpMoF4A8BPosl8eE1pX6sX7nXz81J7EneDlDKk/edit?usp=sharing)
* [Google Sheets - Product Pricing](https://docs.google.com/spreadsheets/d/1NKABA24h-lZ-TIAkpXsm-FEr-8UrwCgCzuyNzCoZTk0/edit?usp=sharing)
* [Google Sheets - Company Descriptions](https://docs.google.com/spreadsheets/d/12UoNZb6tmFIuPQVkWhqN0Bkcgm8oHHUrplYvWUrkDYU/edit?usp=sharing)
* Alternative BigQuery - Company Descriptions Table
```
CREATE TABLE `Company_Descriptions`
(
  Customer_ID INT64,
  Customer_Long_Description STRING
);
INSERT INTO `Company_Descriptions` values (15458, 'ENELTEN');
INSERT INTO `Company_Descriptions` values (16080, 'NEW DEVICES CORP.');
INSERT INTO `Company_Descriptions` values (19913, 'ENELTENGAS');
INSERT INTO `Company_Descriptions` values (30108, 'CARTOON NT');
INSERT INTO `Company_Descriptions` values (32492, 'Thomas Ed Automobiles');
```
## BigQuery Common Data Model SCHEMA
```
CREATE TABLE `CDM_Pricing`
(
Fiscal_Date DATETIME,
Product_ID STRING,
Client_ID INT64,
Customer_Hierarchy STRING,
Division STRING,
Market STRING,
Channel STRING,
Customer_code INT64,
Customer_Long_Description STRING,
Key_Account_Manager INT64,
Key_Account_Manager_Description STRING,
Struct STRING,
Invoiced_quantity_in_Pieces FLOAT64,
Gross_Sales FLOAT64,
Trade_Budget_Costs FLOAT64,
Cash_Discounts_and_other_Sales_Deductions INT64,
Net_Sales FLOAT64,
Variable_Production_Costs_STD FLOAT64,
Fixed_Production_Costs_STD FLOAT64,
Other_Cost_of_Sales INT64,
Standard_Gross_Margin FLOAT64,
Transportation_STD FLOAT64,
Warehouse_STD FLOAT64,
Gross_Margin_After_Logistics FLOAT64,
List_Price_Converged FLOAT64
);

CREATE TABLE `Pricing_Data`
(
Product_Code STRING,
Client_Number INT64,
year DATETIME,
Jan FLOAT64,
Feb FLOAT64,
Mar FLOAT64
);

CREATE TABLE `CDM`
(
Customer_Code INT64,
Customer_Description STRING,
Customer_Hierarchy_Code_1 STRING,
Customer_Hierarchy_Description_1 STRING,
Customer_Market STRING,
Dimension STRING,
Key_Account_Manager_Description STRING,
LODLevel1 STRING,
Order_Date DATETIME,
Product_Brand STRING,
Product_Code STRING,
Product_Description STRING,
Product_Family_Code STRING,
Product_Group STRING,
Product_Group_Brand STRING,
Product_Size STRING,
Product_Subfamily STRING,
Sales_Channel STRING,
Selected_LOD STRING,
Selected_LOD2 STRING,
Selected_Measure_2 STRING,
UnitNetSalescalc_bin_2 STRING,
AGGUnit_Price FLOAT64,
Cost_To_Serve_1 FLOAT64,
Cost_To_Serve_2 FLOAT64,
Cost_To_Serve_3 FLOAT64,
Cost_To_Serve_4 FLOAT64,
Cost_Type_1 FLOAT64,
Cost_Type_2 FLOAT64,
Gross_Sales FLOAT64,
List_Price FLOAT64,
NetSalescalc FLOAT64,
Non_Invoiced_Discount_1 FLOAT64,
Non_Invoiced_Discount_2 FLOAT64,
Non_Invoiced_Discount_3 FLOAT64,
Non_Invoiced_Discount_4 FLOAT64,
Non_Invoiced_Discount_5 FLOAT64,
Non_Invoiced_Discount_6 FLOAT64,
Non_Invoiced_Discount_7 FLOAT64,
Non_Invoiced_Discount_8 FLOAT64,
Number_of_Records FLOAT64,
Unit_Sales_1 FLOAT64
);
```
## Disclaimer
This is not an officially supported Google product.

All files in this folder are under the Apache License, Version 2.0 unless noted otherwise.
