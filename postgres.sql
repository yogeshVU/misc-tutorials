create table pets
(
	id SERIAL primary key,
	species VARCHAR(30),
	full_name VARCHAR(30),
	age INT
)


create table owners
(
	id SERIAL primary key,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	city VARCHAR(30),
	state CHAR(2)
);


alter table pets 
add column owner_id INT;

select * from Pets;

alter table pets
add constraint fk_owner_pet
foreign key (owner_id) references owners(id)
match full;

select  * from owners 

insert into owners (first_name, last_name, city, state)
values ('rahul', 'b','Nashville','TN');

select * from owners 

insert into owners (first_name, last_name, city, state)
values ('gaurav', 'naik','Pune','MH'),
('nitin', 'naik','Nashville','TN'),
 ('divya', 'naik','Nashville','TN'),
('shreyas', 'naik','Pune','MH');


insert into pets (species, full_name, age, owner_id)
values ('Dog','Rex',6,1), ('Rabbit', 'Fluffy',2,5),
('Cat','Tom', 8,2), ('Mouse','Jerry', 10,2),
('Tortoise','Squirtle',42,3), ('Dog','Biggles',4,1);

select * from pets;

select * from pets
where age not in (1,2,3)

select owners.first_name, owners.last_name, pets.full_name from owners 
join pets on  owners.id = pets.owner_id;

select o.first_name, o.last_name, p.full_name from owners o
right join pets p on  o.id = p.owner_id;

select o.first_name, o.last_name, p.full_name from owners o
right join pets p on  o.id = p.owner_id
where p.species = 'Dog';
