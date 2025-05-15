-- Limit and Aliasung

-- limit di gunakan untuk membatasi jumlah baris hasil query yg di tampilkan
-- alias digunakan untuk memberi nama lain pada kolom atau tabel agar hasil query lebih mudah dibaca atau dipanggil.

select * from employee_demographics
limit 3;

select * 
from employee_demographics
order by age desc              -- desc ( descending = menurun) asc ( ascending = naik)
limit 3;

select * 
from employee_demographics
order by age desc              -- desc ( descending = menurun) asc ( ascending = naik)
limit 2, 1; -- kita mau melihat satu baris setelah baris ke dua

-- Aliasing

select gender, avg(age) As avg_age
from employee_demographics
group  by gender
having  avg_age > 40
;