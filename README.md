# Retail Sales Analysis 
Thousands of people visit supermarkets every day to buy food and housing supplies. By analyzing this data, we can learn more about customer preferences regarding payment methods, visiting times, and membership in loyalty programs. This information separated by branches and gender, can help the supermarket gain insight into the customers preferences. Then, they can adjust their locations to increase customer satisfaction and profits. 

Supermarket Dashboard

Supermarket Presentation

_6 step data analysis process_

Ask

Prepare

Analyze

Share

Act

# Ask

**Objective:** An established Supermarket is looking to gain a better understanding of its customers to identify improvements and opportunity for growth. Doing this will lead to store adjustments that will increase customer satisfaction and profits.

* Which branch has the best results in the loyalty program?
* Does the membership depend on customer rating?
* Does gross income depend on the proportion of customers in the loyalty program? On payment method?
* Are there any differences in indicators between men and women?
* Which product category generates the highest income?

  _These questions will give the firsthand thoughts of the customer. Understanding their viewpoint about the stores will provide insight on how to enhance their experience._

 # Prepare

  Source: Supermarket Dataset

We will be using a supermarket sales dataset from kaggle.
 * 1 csv file
 * Historical dataset that covers 3 months between 3 different branches at various locations.
 * Measures what males and females purchased at these locations.
 * Made for predictive analytic purposes, and developing techniques for data mining, predictive modeling, and forecasting unknown events.

 # Process

 **Excel**

 * Chose to work with specific columns, Branch, Customer_type, Gender, Product line, Payment, Gross Income

   _These columns were able to give me insight on the customer loyalty program and how much it's benefitting the supermarket from a sales perspective_

  * Checked for spelling errors, duplicates, format issues
  * Created a pivot tables to gain a quick note of some patterns. I noticed, like a sum of the grand total, and how quantity correlated to the other fields.

    _I chose to make pivot tables for a quick summary and comparisons of the data such as gender corelating to the other columns. This gave me a better picture about what could be uncovered before sending it to SQL._ 

  **SQL**

  * Utilized to pull different information and evaluate comparisons.

     _Similar to the pivot tables I dove deeper into comparisons but using BigQuerys platform allowed for more complexity._ 

  * Various calculations used in order to find numerical information.

     _Measured different trends such as the most popular product purchased by gender, and payment preferences._

   SQL Code

   # Analyze

   ## Summary:

   Delving into customer behavior and loyalty program efficacy offers valuable insights into purchasing habits and preferences, guiding our marketing strategies. Although distinctions between loyalty program members and regular customers may be subtle, pinpointing trends informs strategic adjustments to enhance customer satisfaction and competitive positioning. Effectively leveraging this data enables us to tailor offerings and loyalty programs, fostering stronger customer loyalty and setting us apart from competitors.

   **Payment Preference**
    
  This is the divide between male and female based on payment options. These three methods of payment can help the supermarket understand how their customers prefer to pay for the items they purchase and how they can make sure these options are  supported for            various situations. Making sure things are simple and convenient will always be a safe move, such as a nearby atm machine, or a personal app to help out E wallets.

  ```
  SELECT COUNTIF(Gender='Female') as female FROM `supermarket-375222.Supermarket.sales_table` 
  Where Payment = "Cash" 

  SELECT COUNTIF(Gender='Female') as female_pay FROM `supermarket-375222.Supermarket.sales_table` 
  Where Payment = "Ewallet"

  SELECT COUNTIF(Gender='Female') as female_pay FROM `supermarket-375222.Supermarket.sales_table` 
  Where Payment = "Credit card"
 ```
```
  SELECT COUNTIF(Gender='Male') as male FROM `supermarket-375222.Supermarket.sales_table` 
  Where Payment = "Cash"

  SELECT COUNTIF(Gender='Male') as male FROM `supermarket-375222.Supermarket.sales_table` 
  Where Payment = "Ewallet"

  SELECT COUNTIF(Gender='Male') as male FROM `supermarket-375222.Supermarket.sales_table` 
  Where Payment = "Credit card"
```

   

   
    
   
   
