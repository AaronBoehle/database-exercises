USE codeup_test_db;

create table albums (
  id int unsigned not null auto_increment,
  artist varchar (50),
  name varchar (50),
  release_date date,
  sales int unsigned,
  genre varchar (50),
  primary key (id)
);