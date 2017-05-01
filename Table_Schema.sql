
CREATE TABLE Security_Question
(
  Q_ID INT(4) NOT NULL,
  Question varchar(100) NOT NULL,
  PRIMARY KEY (Q_ID)
);


CREATE TABLE users
(
  E_Mail varchar(100) NOT NULL,
  Passwords INT(20) NOT NULL,
  Name_users varchar(30) NOT NULL,
  Q_ID INT(4) NOT NULL,
  PRIMARY KEY (E_Mail),
  FOREIGN KEY (Q_ID) REFERENCES Security_Question(Q_ID)
);


CREATE TABLE Traveller
(
  
  SourceD varchar(100) NOT NULL,
  Destination varchar(100) NOT NULL,
  Dept_Time varchar(10) NOT NULL,
  Nos_of_Passengers INT(20) NOT NULL,
  dateof date  NOT NULL ,
  T_ID INT(4) NOT NULL,
  T_E_Mail VARCHAR(20) not null REFERENCES Users(E_Mail),
  PRIMARY KEY (T_ID)
);


CREATE TABLE owners
(
  Company_Name varchar(100),
  O_ID INT(5) NOT NULL,
  O_E_Mail VARCHAR(20) not null REFERENCES Users(E_Mail),
  PRIMARY KEY (O_ID)
);

CREATE TABLE Auto_Service
(
  A_ID INT(20) NOT NULL,
  Music_Choice varchar(100) NOT NULL,
  Plate_Nos varchar(20) NOT NULL,
  Charges INT(10) NOT NULL,
  timeof1 varchar(10)  NOT NULL,
  dateof1 date NOT NULL,
  A_O_ID VARCHAR(20) not null REFERENCES Users(O_ID),
  PRIMARY KEY (A_ID)
);


CREATE TABLE Car_Service
(
  
  timeof2 varchar(50) NOT NULL,
  dateof2 Date  NOT NULL,
  Service_id INT(10) NOT NULL,
  Charges INT(10) NOT NULL,
  PRIMARY KEY (Service_id),
  C_O_ID VARCHAR(20) not null REFERENCES Users(O_ID),
  C_T_ID VARCHAR(20) not null REFERENCES Traveller(T_ID)
);


CREATE TABLE Preferences
(
  Music varchar(20) NOT NULL,
  Smoking varchar(20) NOT NULL,
  Gossip varchar(20) NOT NULL,
  Gender varchar(10) NOT NULL,
  P_S_ID VARCHAR(20) not null REFERENCES Car_Service(Service_id)

);


CREATE TABLE Route
(
  R_ID varchar(20) NOT NULL,
  SourceD varchar(100) NOT NULL,
  Mile_Stones varchar(100) NOT NULL,
  OneWay_TwoWay varchar(10) ,
  Capacity INT(20) NOT NULL,
  Destination varchar(100) NOT NULL,
  R_A_ID VARCHAR(20) not null REFERENCES Auto_Service(A_ID),
  S_S_ID VARCHAR(20) not null REFERENCES Car_Service(Service_id),
  PRIMARY KEY(R_ID)
);


CREATE TABLE Car_Details
(
  Plate_Nos varchar(20) NOT NULL,
  Color varchar(10) NOT NULL,
  AC_NonAC varchar(20) NOT NULL,
  Model varchar(20) NOT NULL,
  Capacity INT(20) NOT NULL,
  PRIMARY KEY (Plate_Nos),
 C_S_ID VARCHAR(20) not null REFERENCES Car_Service(Service_id)
);

create table model(
Model varchar(20) NOT NULL,
Capacity int(10) NOT NULL,
AC_NonAC varchar(20) NOT NULL,
Primary Key(Model)
);


insert into Security_Question values(0001,"What was your first pet name?");
insert into Security_Question values(0002,"What was your school's name?");
insert into Security_Question values(0003,"What was your first vehicle?");
insert into Security_Question values(0004,"Where is your hometown ?");
insert into Security_Question values(0005,"Who was your favorite actor?");

select * from Security_Question;

insert into users values("userone@user.com",111111,"UserOne",0001);
insert into users values("usertwo@user.com", 121212,"UserTwo",0003);
insert into users values("userthree@user.com",131313,"UserThree",0004);
insert into users values("userfour@user.com", 141414,"UserFour",0002);
insert into users values("userfive@user.com", 151515,"UserFive",0001);
insert into users values("usersix@user.com",  161616,"UserSix",0005);
insert into users values("userseven@user.com", 171717,"UserSeven",0004);
insert into users values("usereight@user.com", 181818,"UserEight",0002);
insert into users values("usernine@user.com", 191919,"UserNine",0005);
insert into users values("userten@user.com",212121,"UserTen",0003);


select *from users;

insert into Traveller values("Source1","Destination1","12:00-PM",6,'2017-01-12',1001,"userone@user.com");
insert into Traveller values("Source2","Destination1","1:00-PM",8,'2016-10-12',1002,"usertwo@user.com");
insert into Traveller values("Source1","Destination2","8:00-PM",2,'2017-01-03',1003,"userthree@user.com");
insert into Traveller values("Source2","Destination3","11:00-AM",4,'2017-03-01',1004,"userfour@user.com");
insert into Traveller values("Source2","Destination4","4:00-PM",1,'2017-04-24',1005,"userfive@user.com");
insert into Traveller values("Source3","Destination2","6:00-PM",4,'2017-04-15',1006,"usersix@user.com");
insert into Traveller values("Source4","Destination3","7:00-PM",5,'2017-03-17',1007,"userseven@user.com");
insert into Traveller values("Source3","Destination2","6:00-AM",9,'2017-04-07',1008,"usereight@user.com");
insert into Traveller values("Source1","Destination4","10:00-PM",2,'2017-02-04',1009,"usernine@user.com");
insert into Traveller values("Source4","Destination4","10:00-AM",8,'2017-04-30',1010,"userten@user.com");


select *from Traveller;


insert into owners values("Comp1",501,"userone@user.com");
insert into owners values("Comp2",502,"usertwo@user.com");
insert into owners values("Comp3",503,"userthree@user.com");
insert into owners values("Comp4",504,"userfour@user.com");
insert into owners values("Comp5",505,"userfive@user.com");
insert into owners values("Comp6",506,"usersix@user.com");
insert into owners values("Comp7",507,"userseven@user.com");
insert into owners values("Comp8",508,"usereight@user.com");
insert into owners values("Comp9",509,"usernine@user.com");
insert into owners values("Comp10",510,"userten@user.com");


select * from owners;



insert into Auto_Service values(5001,"Rock","Plate1",200,"12:00-PM",'2017-01-12',507);
insert into Auto_Service values(5002,"Metal","Plate2",100,"1:00-PM",'2016-10-12',509);
insert into Auto_Service values(5003,"Soft","Plate3",150,"8:00-PM",'2017-01-03',510);
insert into Auto_Service values(5004,"Metal","Plate4",200," 11:00-AM",'2017-03-01',508);
insert into Auto_Service values(5005,"Rock","Plate5",300," 4:00-PM",'2017-04-24',507);
insert into Auto_Service values(5006,"Rock","Plate6",100," 6:00-PM",'2017-04-15',509);
insert into Auto_Service values(5007,"Soft","Plate7",50," 7:00-PM",'2017-03-17',503);
insert into Auto_Service values(5008,"Soft","Plate8",80," 6:00-AM",'2017-04-07',504);
insert into Auto_Service values(5009,"Metal","Plate9",100," 10:00-PM",'2017-02-04',506);
insert into Auto_Service values(5010,"Rock","Plate10",250," 10:00-AM",'2017-04-30',512);


select *from Auto_Service;

insert into Car_Service values("12:00-PM",'2017-01-12',2001,1500,501,1001);
insert into Car_Service values("1:00-PM",'2016-10-12',2002,1800,503,1002);
insert into Car_Service values("8:00-PM",'2017-01-03',20013,2000,501,1003);
insert into Car_Service values(" 11:00-AM",'2017-03-01',2004,3000,502,1004);
insert into Car_Service values(" 4:00-PM",'2017-04-24',2005,1000,504,1005);
insert into Car_Service values(" 6:00-PM",'2017-04-15',2006,500,505,1006);
insert into Car_Service values(" 7:00-PM",'2017-03-17',2007,700,506,1007);
insert into Car_Service values(" 6:00-AM",'2017-04-07',2008,600,505,1008);
insert into Car_Service values(" 10:00-PM",'2017-02-04',2009,2000,503,1009);
insert into Car_Service values(" 10:00-AM",'2017-04-30',2010,2200,508,1010);


select * from Car_Service;

insert into Preferences values("Rock","Yes","No","Mix",2001);
insert into Preferences values("Soft","No","Yes","Female",2002);
insert into Preferences values("Metal","No","Yes","Mix",2003);
insert into Preferences values("Rock","No","No","Mix",2004);
insert into Preferences values("Rock","No","No","Mix",2005);
insert into Preferences values("Metal","Yes","Yes","Female",2006);
insert into Preferences values("Soft","Yes","No","Mix",2007);
insert into Preferences values("Soft","No","No","Female",2008);
insert into Preferences values("Rock","No","Yes","Mix",2009);
insert into Preferences values("Soft","No","Yes","Female",2010);

	
select *from Preferences;


insert into Route values(3001,"Source1","Ms1","oneway",8,"Destination1",5001,2001);
insert into Route values(3002,"Source2","Ms3","twoway",10,"Destination2",5002,2002);
insert into Route values(3003,"Source1","Ms2","oneway",6,"Destination1",5003,2003);
insert into Route values(3004,"Source3","Ms1","oneway",4,"Destination3",5004,2004);
insert into Route values(3005,"Source2","Ms3","twoway",8,"Destination2",5005,2005);
insert into Route values(3006,"Source1","Ms1","oneway",6,"Destination4",5006,2006);
insert into Route values(3007,"Source4","Ms2","twoway",8,"Destination1",5007,2007);
insert into Route values(3008,"Source1","Ms3","twoway",10,"Destination2",5008,2008);
insert into Route values(3009,"Source3","Ms1","oneway",8,"Destination3",5009,2009);
insert into Route values(3010,"Source1","Ms2","twoway",5,"Destination1",5010,2010);


select *from Route ;


insert into Car_Details values("Plate11","White","AC","Model1",4,2001);
insert into Car_Details values("Plate12","Black","Non-AC","Model3",4,2002);
insert into Car_Details values("Plate13","Grey","AC","Model2",4,2003);
insert into Car_Details values("Plate14","White","AC","Modlel2",4,2004);
insert into Car_Details values("Plate15","Red","Non-AC","Model3",4,2005);
insert into Car_Details values("Plate16","Black","Non-AC","Model1",4,2006);
insert into Car_Details values("Plate17","Blue","AC","Model4",4,2007);
insert into Car_Details values("Plate18","Silver","AC","Model2",4,2008);
insert into Car_Details values("Plate19","Black","Non-AC","Model3",4,2009);
insert into Car_Details values("Plate20","White","AC","Model1",4,2010);

select *from Car_Details ;

insert into model values("Model1",4,"AC");
insert into model values("Model2",4,"Non-AC");
insert into model values("Model3",4,"AC");
insert into model values("Model4",4,"AC");
insert into model values("Model5",4,"Non-AC");
insert into model values("Model6",4,"Non-AC");
insert into model values("Model7",4,"AC");
insert into model values("Model8",4,"AC");
insert into model values("Model9",4,"Non-AC");
insert into model values("Model10",4,"AC");


select * from model;

