# Retail Sales Analysis 
Thousands of people visit supermarkets every day to buy food and housing supplies. By analyzing this data, we can learn more about customer preferences regarding payment methods, visiting times, and membership in loyalty programs. This information separated by branches and gender, can help the supermarket gain insight into the customers preferences. Then, they can adjust their locations to increase customer satisfaction and profits. 

**[Supermarket Dashboard](https://public.tableau.com/shared/GQR73Q577?:display_count=n&:origin=viz_share_link)**

**[Supermarket Presentation](https://docs.google.com/presentation/d/1u3fTM8nA7pOJb4Ie6r_2YDPo_rsGZH4lvplWfWUdr7Q/present?slide=id.p1)**

_6 step data analysis process_

[Ask](https://github.com/Juwan23D/Retail-Sales-Analysis#ask)

[Prepare](https://github.com/Juwan23D/Retail-Sales-Analysis#prepare)

[Process](https://github.com/Juwan23D/Retail-Sales-Analysis#process)

[Analyze](https://github.com/Juwan23D/Retail-Sales-Analysis#analyze)

[Share]()

[Act](https://github.com/Juwan23D/Retail-Sales-Analysis#act)

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
**Supermarket Loyalty Program**

 This is meant to provide an emphasis on branch results of the loyalty program. Here once C has the greatest average gross income of 16.027, and it also has the highest rating with 7.04. The supermarket can investigate the qualities about branch C that has given it 
 the slight edge on branch A and B.

```
SELECT Branch, AVG(gross_income) as gross_income
FROM `supermarket-375222.Supermarket.sales_table` 
Where (Customer_type='Member')
Group BY Branch 
```
```
SELECT Branch, AVG(Rating) as avg_rating FROM `supermarket-375222.Supermarket.sales_table` 
Group BY Branch
 ```
**Member vs normal/gender gdp**

Now we see the comparison of gender between loyalty members and normal customers. The members have a higher gross income between genders with females at 16.082 and males at 15.095 while the normal females have 15.821 and males at 14.526. However, the normal rating for females (6.99) and males (7.019) was slightly higher than the members rating of females (6.941) and males (6.94). Then what about the supermarket makes the normal customers rate it higher than the loyalty members, to me it seems there may need to be some improvement in the loyalty program.

_I know the difference is minimal and reward members can be more critical, but any business would want all of its customers in the loyalty program. Word of mouth is the greatest marketing promotion espically coming from someone you trust. If loyalty members like the store less than normal members, what rewards customers would reccomend it to their normal member friends?_

```
SELECT COUNTIF(Gender='Male') as m_p, AVG(gross_income) as Gross_income, Customer_type,
FROM `supermarket-375222.Supermarket.sales_table`
Where Gender='Male'
Group BY Customer_type
```
```
SELECT COUNTIF(Gender='Female') as f_p, AVG(gross_income) as Gross_income, Customer_type,
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Female'
Group BY Customer_type
```
**Highest avg gross product lines by gender**

Product lines that had the highest average gross income can tell the supermarket what the customers like the most. Divided between the genders helps the supermarket narrow down preferences and what people buy the most between selections. We saw earlier that females spend more than the men, and now we see what both their favorite product lines are. The supermarket can now make adjustments in supply and invest more into their top sellers.

```
SELECT Product_line as pr_p, AVG(gross_income) as Gross_income, 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Female'
Group BY Product_line
```
```
SELECT Product_line as pr_p, AVG(gross_income) as Gross_income, 
FROM `supermarket-375222.Supermarket.sales_table` 
WHERE Gender='Male'
Group BY Product_line
```
# Share

# Act

* Which branch has the best results in the loyalty program?

One of the main things I noticed was that the best branch in the loyalty program was branch C. The C branch had the highest gross income of 16.05 and rating of 7.04 from the customers. Even among the normal customers, Branch C had the highest results  with an average gross income og 16.07 and a rating of 7.09. 

* Does the membership depend on customer rating?

However, in this comparison I concluded that membership didn’t necessarily depend on its rating because the normal guests (7.00) had a higher rating than the members (6.94). 

* Does gross income depend on the proportion of customers in the loyalty program? On payment method?

Since the difference wasn’t significant, one could say that the gross isn’t based heavily on the loyalty program because the normal customers are outpacing the members. When it came to the payment methods, females mostly paid with cash at 178, and normal males preferred ewallet with 184. However, neither one of these options had a major impact over the other options, so I can only suggest moving forward with all three options.

* Are there any differences in indicators between men and women?

Some differences between the genders was that there were more females (261) in the loyalty program than the males(240). However, there are more normal males (259) than females (240), and between the branches the members had a higher gross income so the supermarket may need to see how they can get more normal customers to become members.The highest product line for men are health and beauty (16.576) while for females its home and lifestyle (18.105). Females also have a higher gross income average than males in both members (F 16.082) (M 15.094) and normal (F 15.820) (M 14.526). 

* Which product category generates the highest income?

Home and lifestyle generates the highest income with a gross income total average of 336.636.

### Reccomendations ###

Some recommendations I'd make would be to do a survey, and see what customers would like to see in a loyalty program. What incentives do they value the most, and how can this be used to turn normal customers into members.

Seeing that women spend more than men, what needs and wants do women fulfill by purchasing from the supermarket? Which home and lifestyle items do they buy the most of?

Advertising sales more in the home and lifestyle for women and health and beauty sections for men.  

Also gathering information on what men would like more out of the store, such as any items that are available at other stores that aren't at the supermarket that they’d want to see more of.


This study was meant to give understanding to the parts the supermarket is using. The branches, loyalty program, and rating can tell the story of what the supermarket can do in the future to increase revenue. Seeing the patterns of what males and females purchased along with how they viewed the store with the rating system, helped the supermarket gaze into the mind of the customer to see what they wanted.  

   

   
    
   
   
