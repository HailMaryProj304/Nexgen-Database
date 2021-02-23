SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE if exists ngf_policies;
DROP TABLE if exists ngf_clients;
DROP TABLE if exists ngf_administrators;
DROP TABLE if exists ngf_summaries;
SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE ngf_policies (
policy_id int (5) auto_increment primary key,
client_id int (5) NOT NULL,
policy_number 		VARCHAR (20) NOT NULL,
first_name 			VARCHAR (20) NOT NULL,
last_name			VARCHAR (20) NOT NULL,
provider			VARCHAR (30) NOT NULL,
type				VARCHAR(20) NOT NULL,
coverage_amount		double (12,5) NOT NULL,
start_date			DATE NOT NULL,
end_date 			VARCHAR (30) NOT NULL
);

CREATE TABLE ngf_clients (
client_id			int (5) AUTO_INCREMENT primary key,
email				VARCHAR (30) NOT NULL,
first_name 			VARCHAR (20) NOT NULL,
last_name			VARCHAR (20) NOT NULL,
date_of_birth		DATE NOT NULL,
phone_number		VARCHAR (10) NOT NULL,
street_address		VARCHAR (40) NOT NULL,
province			VARCHAR (2) NOT NULL,
country				VARCHAR (30) NOT NULL,
postal_code			VARCHAR (6) NOT NULL
);

CREATE TABLE ngf_administrators (
employee_id			int (5) primary key,
role				int (1) NOT NULL,
email				VARCHAR (30) NOT NULL,
first_name			VARCHAR (20) NOT NULL,
last_name			VARCHAR (20) NOT NULL
);

CREATE TABLE ngf_summaries (
summary_id			int (5) primary key,
client_id			int (5) NOT NULL,
first_name 			VARCHAR (20) NOT NULL,
last_name			VARCHAR (20) NOT NULL,
path				VARCHAR (50) NOT NULL
);
	