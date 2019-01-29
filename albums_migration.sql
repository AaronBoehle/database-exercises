USE codeup_test_db;

create table albums (
  id int unsigned not null auto_increment,
  artist varchar (75) not null ,
  name varchar (75) not null,
  release_date int,
  sales float unsigned,
  genre varchar (75),
  primary key (id)
);

alter table albums
add unique (name, artist);