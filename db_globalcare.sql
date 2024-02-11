
CREATE DATABASE  db_globalcare;

USE db_globalcare;

CREATE TABLE  tbl_admin (
  admin_id int(10) unsigned NOT NULL auto_increment,
  admin_username varchar(50) NOT NULL,
  admin_password varchar(50) NOT NULL,
  PRIMARY KEY  (admin_id)
) AUTO_INCREMENT=2;


CREATE TABLE  tbl_cdetails (
  cd_id int(10) unsigned NOT NULL auto_increment,
  cd_description varchar(100) default NULL,
  gtoken_id int(10) unsigned default NULL,
  user_id int(10) unsigned default NULL,
  cd_bookingdate date default NULL,
  cd_reply varchar(100) default 'No Reply',
  cd_status varchar(50) NOT NULL default '0',
  PRIMARY KEY  (cd_id)
) AUTO_INCREMENT=3;



CREATE TABLE  tbl_cmptype (
  cmptype_id int(10) unsigned NOT NULL auto_increment,
  cmp_type varchar(50) NOT NULL,
  PRIMARY KEY  (cmptype_id)
) AUTO_INCREMENT=5;



CREATE TABLE  tbl_complaint (
  complaint_id int(10) unsigned NOT NULL auto_increment,
  complaint_title varchar(50) NOT NULL,
  complaint_date date default NULL,
  complaint_reply varchar(50) default NULL,
  complaint_status int(10) unsigned default '0',
  user_id int(10) unsigned default '0',
  consultancy_id int(10) unsigned default '0',
  complaint_content varchar(50) default NULL,
  complainttype_id int(10) unsigned default NULL,
  hospital_id int(3) unsigned default NULL,
  doctor_id int(10) unsigned default NULL,
  PRIMARY KEY  (complaint_id)
) AUTO_INCREMENT=7;




CREATE TABLE  tbl_consultancy (
  consultancy_id int(10) unsigned NOT NULL auto_increment,
  consultancy_name varchar(50) NOT NULL,
  hospital_id int(10) unsigned NOT NULL,
  consultancy_head varchar(50) NOT NULL,
  consultancy_logo varchar(50) NOT NULL,
  consultancy_password varchar(50) default NULL,
  PRIMARY KEY  (consultancy_id)
) AUTO_INCREMENT=4;



CREATE TABLE  tbl_davailability (
  da_id int(10) unsigned NOT NULL auto_increment,
  doctor_id int(10) unsigned NOT NULL,
  da_fromtime time NOT NULL,
  da_totime time default NULL,
  da_date date NOT NULL,
  consultancy_id int(10) unsigned NOT NULL,
  PRIMARY KEY  (da_id)
) AUTO_INCREMENT=23;



CREATE TABLE  tbl_department (
  dept_id int(10) unsigned NOT NULL auto_increment,
  dept_name varchar(50) NOT NULL,
  PRIMARY KEY  (dept_id)
) AUTO_INCREMENT=16;



CREATE TABLE  tbl_district (
  district_id int(10) unsigned NOT NULL auto_increment,
  district_name varchar(50) NOT NULL,
  PRIMARY KEY  (district_id)
) AUTO_INCREMENT=5;


CREATE TABLE  tbl_doctors (
  doctors_id int(50) NOT NULL auto_increment,
  doctors_name varchar(50) NOT NULL,
  doctors_contact varchar(50) NOT NULL,
  doctors_email varchar(50) NOT NULL,
  doctors_gender varchar(50) NOT NULL,
  doctors_address varchar(50) NOT NULL,
  place_id int(10) unsigned default NULL,
  hospital_id int(10) unsigned NOT NULL,
  doctors_photo varchar(50) default NULL,
  doctors_qualification varchar(500) NOT NULL,
  doctors_pswrd varchar(50) default NULL,
  doctors_doj date default NULL,
  doctors_isactive int(10) unsigned default '0',
  department_id int(10) unsigned NOT NULL,
  PRIMARY KEY  (doctors_id)
) AUTO_INCREMENT=5;



CREATE TABLE  tbl_feedback (
  feedback_id int(50) NOT NULL auto_increment,
  feedback_description varchar(50) default NULL,
  feedback_date date default NULL,
  user_id int(10) unsigned default NULL,
  hospital_id int(10) unsigned default NULL,
  doctor_id int(10) unsigned default NULL,
  consultancy_id tinyint(3) unsigned default NULL,
  PRIMARY KEY  (feedback_id)
) AUTO_INCREMENT=8;



CREATE TABLE  tbl_generatetoken (
  gtoken_id int(10) unsigned NOT NULL auto_increment,
  token_no varchar(50) default NULL,
  da_id varchar(50) default NULL,
  token_bookstatus int(11) default '0',
  PRIMARY KEY  (gtoken_id)
) AUTO_INCREMENT=217;



CREATE TABLE  tbl_hospital (
  hospital_id int(10) unsigned NOT NULL auto_increment,
  hospital_name varchar(50) NOT NULL,
  hospital_contact varchar(50) NOT NULL,
  hospital_email varchar(50) NOT NULL,
  hospital_address varchar(50) NOT NULL,
  place_id int(10) unsigned NOT NULL,
  hospital_logo varchar(50) default NULL,
  hospital_proof varchar(50) default NULL,
  hospitaltype_id int(10) unsigned NOT NULL,
  hospital_pswrd varchar(50) NOT NULL,
  hospital_isactive int(11) NOT NULL default '0',
  hospital_doj date NOT NULL,
  hospital_vstatus varchar(50) default '0',
  PRIMARY KEY  (hospital_id)
) AUTO_INCREMENT=7;



CREATE TABLE  tbl_hospitaltype (
  hospitaltype_id int(10) unsigned NOT NULL auto_increment,
  hospitaltype_name varchar(50) default NULL,
  PRIMARY KEY  (hospitaltype_id)
) AUTO_INCREMENT=9;



CREATE TABLE  tbl_medicalreport (
  mr_id int(10) unsigned NOT NULL auto_increment,
  cd_id int(10) unsigned NOT NULL,
  mr_title varchar(100) NOT NULL,
  mr_remark varchar(100) NOT NULL,
  mr_medicine varchar(100) NOT NULL,
  mr_ismajor varchar(50) NOT NULL,
  mr_majordetails varchar(500) NOT NULL,
  mr_report varchar(100) NOT NULL,
  PRIMARY KEY  (mr_id)
) AUTO_INCREMENT=2;

CREATE TABLE  tbl_place (
  place_id int(10) unsigned NOT NULL auto_increment,
  place_name varchar(50) NOT NULL,
  district_id int(10) unsigned NOT NULL,
  PRIMARY KEY  (place_id)
) AUTO_INCREMENT=14;



CREATE TABLE  tbl_user (
  user_id int(10) unsigned NOT NULL auto_increment,
  user_name varchar(50) NOT NULL,
  user_email varchar(50) NOT NULL,
  user_contact varchar(50) NOT NULL,
  user_address varchar(500) NOT NULL,
  user_gender varchar(50) NOT NULL,
  user_photo varchar(50) NOT NULL,
  user_pswrd varchar(10) default NULL,
  place_id int(10) unsigned default NULL,
  user_pid varchar(50) default NULL,
  user_doj date default NULL,
  PRIMARY KEY  (user_id)
) AUTO_INCREMENT=4;

