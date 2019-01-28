use codeup_test_db;

select 'Albums released after 1991' as 'Info';
delete from albums where release_date > 1991;

select 'The disco era:' as 'Info';
delete from albums where genre = 'Disco';

select 'For those about to rock...' as 'Info';
delete from albums where artist = 'AC/DC';