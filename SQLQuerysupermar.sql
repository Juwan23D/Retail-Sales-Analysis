SELECT Invoice_ID FROM `supermarket-375222.Supermarket.sales_table` 
Group By Invoice_ID 
Having Count (Invoice_ID) > 1 
--Checked to see if there were any duplicates.
;
SELECT * FROM `supermarket-375222.Supermarket.sales_table` LIMIT 1000
--Checked the number of participants in the data.

SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Gender= "Male"  LIMIT 1000
SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Gender= "Female"  LIMIT 1000
--Needed to count the number of male and female participants.

SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Customer_type = "Member"  LIMIT 1000
SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Customer_type = "Normal"  LIMIT 1000
--Needed to see how many members and normal customers there were.

--Needed to see how many females were members or regular and males were members or regular.


SELECT COUNTIF(Customer_type='Member') as member  
FROM `supermarket-375222.Supermarket.sales_table` Where Gender='Male'
--240 Males are members

SELECT COUNTIF(Customer_type='Member') as member  
FROM `supermarket-375222.Supermarket.sales_table` Where Gender='Female'
--261 Females are members


SELECT COUNTIF(Customer_type='Normal') as normal  
FROM `supermarket-375222.Supermarket.sales_table` 
Where Gender='Male'
--259 Males are Normal

SELECT COUNTIF(Customer_type='Normal') as normal 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Gender='Female'
--240 Females are normal




--Measuring product lines


SELECT Product_line as pr_p, COUNT(Quantity) as QT, 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Female' 
Group BY Product_line


--64 Females purchased Health and Beauty
--88 Females purchased Sports and travel
--84 Females purchased Electronic accessories.
--79 Females purchased home and lifestyle.
--96 Females purchased Fashion accessories
--90 Females purchased food and Beverages


SELECT Product_line as pr_p, COUNT(Quantity) as QT, 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Male' 
Group BY Product_line

--88 Males purchased Health and Beauty
--78 Males purchased sports and travel
--86 Males purchased Electronic accessories
--81 Males purchased home and lifestyle
--82 Males purchased Fashion accessories
--84 Males purchased Food and Beverages

SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Branch = "A"  
--340 Branch A

SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Branch = "B"  
--342 Branch B

SELECT COUNT(*) FROM `supermarket-375222.Supermarket.sales_table` 
Where Branch = "C"  
--328 Branch C

SELECT COUNTIF(Customer_type='Member') FROM `supermarket-375222.Supermarket.sales_table` 
Where Branch = "A"  
--Branch A has 167 members in the loyalty program

SELECT COUNTIF(Customer_type='Member') FROM `supermarket-375222.Supermarket.sales_table` 
Where Branch = "B"  
--Branch B has 165 Members in the loyalty program

SELECT COUNTIF(Customer_type='Member') FROM `supermarket-375222.Supermarket.sales_table` 
Where Branch = "C"  
--Branch C has 169 members in the loyalty program

SELECT Branch, AVG(Rating) as avg_rating 
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Branch 


--Branch A has a average rating of 7.027
--Branch B has a average rating of 6.82
--Branch C has a average rating of 7.072

SELECT COUNTIF(Customer_type='Member') as member, AVG(Rating) as avg_rating 
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Customer_type


--Average rating for all 501 members are 6.94

SELECT COUNTIF(Customer_type='Normal') as member, AVG(Rating) as avg_rating 
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Customer_type


--Average rating for all 499 normal guests are 7.00


SELECT Branch, AVG(Rating) as avg_rating 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Customer_type='Member' 
Group BY Branch 


--Average Rating for Branch A members are 6.9988
--Average rating for Branch B members are 6.77
--Average Rating for Branch C members are 7.0485



SELECT Branch, AVG(Rating) as avg_rating 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Customer_type='Normal' 
Group BY Branch 


--Average Rating for Branch A normal are 7.054
--Average rating for Branch B normal are 6.865
--Average Rating for Branch C normal are 7.0987


SELECT Branch, AVG(gross_income) as gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Branch 
--Average gross income for A 14.87
--Average gross income for B 15.23
--Average gross income for C 16.05

SELECT Branch, AVG(gross_income) as gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
Where (Customer_type='Member')
Group BY Branch 
--Average gross income for members of A 15.29
--Average gross income for members of B 15.499
--Average gross income for members of C 16.027

SELECT Branch, AVG(gross_income) as gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
Where (Customer_type='Normal')
Group BY Branch 
--Average gross income for normal A 14.468
--Average gross income for normal B 14.968
--Average gross income for normal C 16.0788

SELECT COUNTIF(Gender='Female') as female FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Cash" 
--178 Females paid Cash

SELECT COUNTIF(Gender='Female') as female_pay FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Ewallet" 
--160 Females paid EWallet
SELECT COUNTIF(Gender='Female') as female_pay FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Credit card" 
--163 Females paid Credit card

SELECT COUNTIF(Gender='Male') as male
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Cash" 
--166 Males paid Cash

SELECT COUNTIF(Gender='Male') as male
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Ewallet" 
--185 Males paid Ewallet

SELECT COUNTIF(Gender='Male') as male
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Credit card" 
--148 Males paid Credit card

SELECT COUNTIF(Customer_type='Member') as member_p 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Cash" 
--168 Members paid Cash

SELECT COUNTIF(Customer_type='Member') as member_p 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Credit card" 
--172 Members paid Credit Card

SELECT COUNTIF(Customer_type='Member') as member_p 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Ewallet" 
--161 Members paid Ewallet

SELECT COUNTIF(Customer_type='Normal') as normal_p 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Cash" 
--176 Normal paid cash



SELECT COUNTIF(Customer_type='Normal') as normal_p 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Ewallet" 
--184 Normal paid Ewallet

SELECT COUNTIF(Customer_type='Normal') as normal_p 
FROM `supermarket-375222.Supermarket.sales_table` 
Where Payment = "Credit card" 
--139 Normal paid Credit card

SELECT AVG(gross_income) as Gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
--Gross income Average is 15.379

SELECT COUNTIF(Customer_type='Member') as member_p, AVG(gross_income) as Gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Customer_type
--Member Gross Average is 15.609

SELECT COUNTIF(Customer_type='Normal') as normal_p, AVG(gross_income) as Gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Customer_type
--Normal Gross Average is 15.149

SELECT COUNTIF(Customer_type='Member') as member_p, AVG(gross_income) as Gross_income, Payment
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Payment
--For the 168 members that paid cash the gross income was 15.493
--For the 161 members that paid Ewallet the gross income was 15.994
--For the 172 members that paid Credit card the gross income was 15.318


SELECT COUNTIF(Customer_type='Normal') as normal_p, AVG(gross_income) as Gross_income, Payment
FROM `supermarket-375222.Supermarket.sales_table` 
Where  Customer_type='Normal'
Group BY Payment
--For the 176 normal that paid cash the gross income was 15.569
--For the 184 normal that paid Ewallet the gross income was 15.062
--For the 139 normal that paid Credit card the gross income was 14.729


SELECT COUNTIF(Gender='Male') as m_p, AVG(gross_income) as Gross_income, Customer_type,
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Customer_type
--Normal males gross income average is 14.526
--Member Males gross income average is 15.094


SELECT COUNTIF(Gender='Female') as f_p, AVG(gross_income) as Gross_income, Customer_type,
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Female'
Group BY Customer_type
--Member Females have a gross income average of 16.082
--Normal Females have a gross income average of 15.820


SELECT Product_line as pr_p, AVG(gross_income) as Gross_income, 
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Product_line
--Health and Beauty gross income is 15.411
--Sports and travel gross income is 15.812
--Electronic Accessories gross income is 15.220
--Home and lifestyle gross income is 16.030
--Fashion Accessories gross income is 14.528
--Food and Beverages gross income is 15.365


SELECT Product_line as pr_p, AVG(gross_income) as Gross_income, 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Female'
Group BY Product_line
--Health and Beauty gross income for females is 13.81
--Sports and travel gross income for females 15.462
--Electronic Accessories gross income for females 15.363
--Home and lifestyle gross income for females 18.105
--Fashion Accessories gross income for females 15.097
--Food and Beverages gross income for females 17.55


SELECT Product_line as pr_p, AVG(gross_income) as Gross_income, 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Male'
Group BY Product_line
--Health and Beauty gross income for Males is 16.576
--Sports and travel gross income for Males 16.207
--Electronic Accessories gross income for Males 15.080
--Home and lifestyle gross income for Males 14.006
--Fashion Accessories gross income for Males 13.860
--Food and Beverages gross income for Males 13.023

SELECT Product_line as pr_p, AVG(Total) as total, 
FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Product_line

--Health and Beauty Total is 323.643
--Sports and travel total is 332.065
--Electronic Accessories total is 319.632
--Home and lifestyle total is 336.636
--Fashion Accessories total is 305.089
--Food and Beverages total is 322.671






