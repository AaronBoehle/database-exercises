use codeup_test_db;

Select 'All Pink Floyd albums:' AS 'Info';
select * from albums where artist = 'pink floyd';

Select 'The year Sgt. Pepper''s Lonely Hearts Club' AS 'Info';
select release_date from albums where name like '%sgt. pepper%';

Select 'The genre of Nevermind:' AS 'Info';
select genre from albums where name = 'nevermind';

select 'Albums released in the 90''s' as 'Info';
select * from albums where release_date between 1990 and 1999;

select 'Albums with less than 20 million certified sales' as 'Info';
select * from albums where sales <20 \G

select 'Anything rock!' as 'Info';
select * from albums where genre like '%rock%' \G
