Create DataBase `minions`; 
Use `minions`;

CREATE TABLE `minions` (
	`id` int primary key auto_increment, 
    `name` Varchar (50) not null,
    `age` int
);
Create Table `towns` (
`town_id` INT Primary key Auto_increment, 
`name` Varchar (30) not null
);
alter table `minions`
ADD COLUMN `town_id`INT, 
ADD Constraint fk_minions_towns
FOREIGN KEY (`town_id`) 
References `towns`(`id`);

insert into `towns`
values 
(1, 'Sofia'),
(2, 'Plovdiv'),
(3, 'Varna');

insert into `minions`
values
(1, 'Kevin', 22, 1),
(2, 'Bob', 15, 3),
(3, 'Steward', NULL, 2);

truncate `minions`;
DROP Table `minions`;
Drop Table `towns`;

select * from `minions`;

-- EX 6:
 Create Table `people`(
 `id` INT Primary key auto_increment,
 `name` VARCHAR (200) NOT NULL,
 `picture` BLOB,
 `height` float(5, 2),
 `weight` float (5,2),
 `gender` Char(1) NOT NULL,
 `birthdate` Date NOT NULL,
 `biography` Text
  );
  -- EX 7:
  