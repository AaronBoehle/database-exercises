USE codeup_test_db;

create table albums (
  id int unsigned not null auto_increment,
  artist varchar (75),
  name varchar (75),
  release_date YEAR,
  sales int unsigned,
  genre varchar (75),
  primary key (id)
);

