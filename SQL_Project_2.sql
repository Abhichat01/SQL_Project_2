create database Project_2
 use Project_2


 create table [role] (id int primary key,
					  role_name varchar(100))


 create table user_account(id int primary key,
						   [user_name] varchar(100),
						   email varchar(254),
						   [password] varchar(200),
						   password_salt varchar(50) not null,
						   password_hash_algorithm varchar(50))



 create table user_has_role (user_role_id int primary key,
							role_start_time time,
							role_end_time timestamp not null,
							user_account_id int foreign key references user_account(id),
							role_id int foreign key references [role](id))




create table [status](id int primary key,
						status_name varchar(100),
						is_user_working bit)



create table user_has_status(id int primary key,
								status_start_time time,
								status_end_time timestamp not null,
								user_account_id int foreign key references user_account(id),
								status_id int foreign key references [status](id))





insert into [role] values (1, 'Test role name 1'),
							(2,'Test role name 2')


insert into user_account values (1,'Test user name 1', 'test@email1.com','test password 1','test password sal1','test password hash1'),
								(2,'Test user name 2', 'test@email2.com','test password 2','test password sal2','test password hash2')


insert into user_has_role (id,role_start_time,user_account_id,role_id) values (1,'13:30',1,1),
																			  (2,'23:30',2,2)


insert into [status] values (1,'Test status name 1',1),
							(2,'Test status name 2',0)


insert into user_has_status (id,status_start_time,user_account_id,status_id) values (1,'14:30',1,1),
																					(2,'10:30',2,2)

select * from role
select * from user_account
select * from user_has_role
select * from user_has_status
select * from status

delete from role
delete from user_account
delete from user_has_role
delete from user_has_status
delete from status
					
																					 




