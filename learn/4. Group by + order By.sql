-- group by

select * from employee_demographics;

select gender
from employee_demographics
group by gender
;

select gender, avg(age) -- avg adalah menghitung rata dalam kolom, jadi rata-rata umur wanita yaitu 38 dan laki-laki 41
from employee_demographics
group by gender
;

select gender, avg(age), max(age), min(age), count(age) -- fungi max untuk melihat umur yang tertinggi
from employee_demographics                         -- fungsi untuk melihat berapa jumlah baris wanita dan laki-laki
group by gender ;

select occupation
from employee_salary
group by occupation;

select occupation, salary
from employee_salary
group by occupation, salary;

-- order by
select * 
from employee_demographics
order by first_name asc; -- order by asc mengurut kan dari yg terkecil ke terbesar dan dari A sampai Z

select * 
from employee_demographics
order by first_name desc; -- order by desc mengurut kan dari yg terbesar ke terkecil dan dari Z sampai A

select *
from employee_demographics
order by gender, age desc;

select *
from employee_demographics
order by 5, 4; -- mengurutkan berdasarkar urutan no kolom tapi tidak sarankan menggunkan ini







