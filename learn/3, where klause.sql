-- where clause
 select *
 from employee_salary
 where first_name = 'leslie'
 ;
 
 select *
 from employee_salary
 where salary>50000
 ;
 
 select *
 from employee_salary
 where salary>=50000
 ;
 
  select *
 from employee_salary
 where salary < 50000
 ;
 
 select *
 from employee_salary
 where salary<=50000
 ;
 
 select *
 from employee_demographics
 where gender = 'Female'
 ;
 
  select *
 from employee_demographics
 where gender != 'Female' -- tanda seru berfungsi untuk memnyatakan gender selain female
 ;
 
 select *
 from employee_demographics
 where birth_date > '1985-01-01'
 ;
 
 -- and or not -- logical operators
 
 select *
 from employee_demographics
 where birth_date > '1985-01-01'
 and gender= 'male'
 ;
 
 select *
 from employee_demographics
 where birth_date > '1985-01-01'
 or not gender= 'male'
 ;
 
  select *
 from employee_demographics
 where (first_name = 'leslie'  and age = 44) or age > 55
 ;
 
 -- Like statement
 -- and -- %
 select *
 from employee_demographics
 where first_name like 'jer%'
 ;
 
  select *
 from employee_demographics
 where first_name like '%er%'
 ;
 
 select *
 from employee_demographics
 where first_name like 'A%'
 ;
 
 select *
 from employee_demographics
 where first_name like 'A__' -- garis bawah 2 di samping A menandakan jumlah karakter
 ;
 
  select *
 from employee_demographics
 where first_name like 'A___%' -- di kombinasikan dengan persen yang berarti akan menampilkan bebrapa nama yang kemungkinan akan di cari
 ;