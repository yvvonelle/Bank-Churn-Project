--what is our churn rate
select * from bank_churn_cleaned

select
 count(*)  as total_customers,
  sum(try_cast(exited as int)) as churned,
  count(*) - sum(try_cast(exited as int)) as retained,
  round(100.0 * sum(try_cast(exited as int)) / count(*), 2) as churn_rate_pct
from bank_churn_cleaned
--(20..37%) our cjurn rate 1 in 5 customers have left

--churn rate by geography
select 
count(*) as total_customers,
sum(try_cast(exited as int)) as churned,
round(100.00 * sum(try_cast(exited as int)) / count(*),2) as churn_rate_pct,
Geography as location
from bank_churn_cleaned
group by Geography
order by churn_rate_pct desc

--churn rate by gender
select 
count(*) as total_customers,
sum(try_cast(exited as int)) as churned,
round(100.00 * sum(try_cast(exited as int)) / count(*),2) as churn_rate_pct,
Gender 
from bank_churn_cleaned
group by Gender
order by churn_rate_pct desc

--churn rate by gender + geography
select 
count(*) as total_customers,
sum(try_cast(exited as int)) as churned,
round(100.00 * sum(try_cast(exited as int)) / count(*),2) as churn_rate_pct,
Geography as location,
Gender
from bank_churn_cleaned
group by Geography,Gender
order by churn_rate_pct desc

--churn rate by age group
select
	case
    when try_cast(age as int) < 30 then 'Under 30'
    when try_cast(age as int) between 30 and 39 then '30-39'
    when try_cast(age as int) between 40 and 49 then '40-49'
    when try_cast(age as int) between 50 and 59 then '50-59'
			else '60+'
	end as age_group,
 count(*) as total_customers,
  sum(try_cast(exited as int)) as churned,
  round(100.0 * sum(try_cast(exited as int)) / count(*), 2) as churn_rate_pct
from bank_churn_cleaned
group by
  case
    when try_cast(age as int) < 30 then 'Under 30'
    when try_cast(age as int) between 30 and 39 then '30-39'
    when try_cast(age as int) between 40 and 49 then '40-49'
    when try_cast(age as int) between 50 and 59 then '50-59'
    else '60+'
  end
order by churn_rate_pct desc;

--churn rate by Number of products
select 
count(*) as total_customers,
sum(try_cast(exited as int)) as churned,
round(100.00 * sum(try_cast(exited as int)) / count(*),2) as churn_rate_pct,
NumOfProducts
from bank_churn_cleaned
group by NumOfProducts
order by NumOfProducts desc

