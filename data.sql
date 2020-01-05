create table user (
	f_id varchar(10) primary key,
	name varchar(40),
	password varchar(40),
	email varchar(40),
	phone varchar(15),
	designation varchar(20),
	gender varchar(1),
	department varchar(20),
	dob date
);

create table admin (
	admin_id varchar(10) primary key,
	name varchar(40),
	password varchar(40),
	email varchar(40),
	phone varchar(15),
	gender varchar(1),
	dob date
);


create table interest (
	f_id varchar(10),
	r_id varchar(10)
);

create table research (
	r_id varchar(10) primary key,
	name varchar(40)
);

create table agency (
	a_id varchar(10) primary key,
	name varchar(40)
);

create table publication (
	pub_id varchar(10) primary key,
	name varchar(40) unique,
	details varchar(100),
	type varchar(40),
	date_ date,
	uploaded_by varchar(10)
);

create table publication_ra (
	pub_id varchar(10),
	r_id varchar(10)
);

create table projects (
	pro_id varchar(10) primary key,
	name varchar(40) unique,
	details varchar(100),
	budget int(10),
	date_ date,
	uploaded_by varchar(10)
);

create table funded_by (
	pro_id varchar(10),
	a_id varchar(10)
);

create table project_ra (
	pro_id varchar(10),
	r_id varchar(10)
);

create table made_pro (
	pro_id varchar(10),
	f_id varchar(10)
);

create table made_pub (
	pub_id varchar(10),
	f_id varchar(10)
);

alter table interest
	add constraint fk1 foreign key (f_id)references  user(f_id);

alter table interest
	add constraint fk2 foreign key (r_id)references  research(r_id);

alter table publication_ra
	add constraint fk3 foreign key (pub_id)references  publication(pub_id);

alter table publication_ra
	add constraint fk4 foreign key (r_id)references  research(r_id);

alter table funded_by
	add constraint fk5 foreign key (pro_id)references projects(pro_id);

alter table funded_by
	add constraint fk6 foreign key (a_id)references agency(a_id);

alter table project_ra
	add constraint fk7 foreign key (pro_id)references projects(pro_id);

alter table project_ra
	add constraint fk8 foreign key (r_id)references research(r_id);

alter table projects
	add constraint fk9 foreign key (uploaded_by)references user(f_id);

alter table publication
	add constraint fk10 foreign key (uploaded_by)references user(f_id);

alter table made_pro
	add constraint fk11 foreign key (pro_id)references projects(pro_id);

alter table made_pub
	add constraint fk12 foreign key (pub_id)references publication(pub_id);

alter table made_pro
	add constraint fk13 foreign key (f_id)references user(f_id);

alter table made_pub
	add constraint fk14 foreign key (f_id)references user(f_id);

