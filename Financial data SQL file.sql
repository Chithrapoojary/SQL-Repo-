create database project_db_new;

use tm_new_db;
select * from financial_data;

select count(id) as total_loan_applications from financial_data;    #total loan application
select sum(loan_amount) as total_funded_amount from financial_data;  #total funded amount
select sum(total_payment) as total_amount_received from financial_data;   #total payment received
select avg (int_rate)*100 as avg_int_rate from financial_data;    #avg interest rate
select round(avg(int_rate),2)*100  as avg_int_rate from financial_data;
select avg(dti)*100 from financial_data;  #avg dti
select * from financial_data;

select loan_status from financial_data;
select distinct loan_status from financial_data;
select count(id) as Good_Loan_Application from financial_data where loan_status="Fully Paid" or loan_status="Current";   # Good loan applications
select count(id) as Bad_Loan_Applications from financial_data where loan_status="charged off"; # No of bad loan applications
select (count(case when loan_status="Fully Paid" or loan_status='Current' then id end)*100)/count(id) as Good_Loan_Percentage from financial_data;
select(count(case when loan_status="Charged off" then id end)*100)/count(id) as Bad_Loan_Percentage from financial_data;
select * from financial_data;
select sum(loan_amount) as Bad_Loan_amount from financial_data where loan_status="charged off";
select sum(loan_amount) as Good_loan_amount from financial_data where loan_status="Fully paid" or loan_status="current";
select sum(total_payment) as Bad_Loan_Amount_Recieved from financial_data where loan_status="charged off";
select sum(total_payment) as Good_loan_Amount_Received from financial_data where loan_status="Fully paid" or loan_status="current";
select * from financial_data;



