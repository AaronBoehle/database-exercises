use codeup_test_db;

select * from albums \g
update albums
set sales = sales*10
where sales=sales;
select * from albums \g


select * from albums where release_date <1980 \g
update albums
set release_date = release_date-100
where release_date < 1980;
select * from albums where release_date <1880 \g


select * from albums where artist = 'Michael Jackson';
update albums
set artist = 'Peter Jackson'
where artist = 'Michael Jackson';
select * from albums where artist = 'Peter Jackson';
