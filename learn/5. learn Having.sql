-- Having or Where
-- having di gunakan untuk menyaring hasil yang telah di kelompokkan
select gender, avg(age) -- avg berfungsi menghitung nilai rata-rata pada sebuah kolom
from employee_demographics
group by gender;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40
;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000
;




