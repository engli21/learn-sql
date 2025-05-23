-- joins

select*from employee_demographics;

select*from employee_salary;

select * from employee_demographics  
inner join employee_salary   -- inner join itu untuk menggabung tabel berdasarkan id, tetapi hanya id yang sama
on employee_demographics.employee_id = employee_salary.employee_id;

select * from employee_demographics  as dem
inner join employee_salary  as sal -- karena namanya panjang jadi kita gunakan aliasing
on dem.employee_id = sal.employee_id;

select * from employee_demographics  as dem
inner join employee_salary  as sal --  rena namanya panjang jadi kita gunakan aliasing
on dem.employee_id = sal.employee_id;

-- other joins

select dem.employee_id, age occupation
from employee_demographics as dem    -- hanya memanggil beberapa tabel saja
inner join employee_salary as sal
on dem.employee_id = sal.employee_id;

select * from employee_demographics as dem
left join employee_salary as sal -- left untuk menampilkan id yang sama
on dem.employee_id = sal.employee_id;

select * from employee_demographics as dem
right join employee_salary as sal -- right untuk menampilkan semua id yang sama apabila salah satu tabel tidak ada id nya maka hasilnya null
on dem.employee_id = sal.employee_id;

-- selft join adalah menggabungkan sebuah tabel ke dirinya sendiri

select * from employee_salary emp1
join employee_salary emp2
on emp1.employee_id = emp2.employee_id + 1; -- tambah 1 di sini adalah emp 1 adalah satu angka lebih besar dari emp2

select emp1.employee_id as emp_santa, -- hanya untuk menampilkan first_name dan last_name saja 
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id + 1 = emp2.employee_id;


-- joining multiple tables together

select *
from employee_demographics as dem -- menggabung tabel dari tabel lain
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
inner join parks_departments pd
on sal.dept_id = pd.department_id;

select * from parks_departments;