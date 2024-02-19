create database store2


create table categories(
	id int primary key identity,
	[name] nvarchar(50),

)



create table products(
	id int primary key identity,
	productcode int unique,
	category_id int,
	foreign key (category_id) references categories(id)  
)

create table stock(
	id int primary key identity ,
	product_id int  ,
	createdDate datetime default getdate(),
	[count] int ,
	foreign key (product_id) references products(id)
)

create table size(
	id int primary key identity,
	letter nvarchar(255),
	[min] varchar(50),
	[max] varchar(50)	
)

alter table stock
add size int 

 insert into categories ([name])
 
 values ('T-shirt'),
		('jeans'),
		('shoes'),
		('jacket')

CREATE VIEW ProductDetails AS
SELECT p.productcode AS ProductCode, c.[name] AS CategoryName, s.createdDate AS EntryDate, 
       
FROM products p
JOIN categories c ON p.category_id = c.id
JOIN stock s ON p.id = s.product_id

SELECT *
FROM ProductDetails
WHERE size;

SELECT COUNT(*) AS ProductCount
FROM ProductDetails
WHERE CategoryName = 'jeans';


