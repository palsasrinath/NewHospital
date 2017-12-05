// database hospital username:- root and password ROOT port no:- 3308


 CREATE TABLE t_feedback(
   feedback_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobileNumber VARCHAR(100) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    message VARCHAR(300) NOT NULL,
    submission_date DATE,
    PRIMARY KEY ( feedback_id )
    );

    
    CREATE TABLE t_patient_register(
   patient_register_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    mobileNumber VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    center VARCHAR(100) NOT NULL,
    submission_date DATE,
    PRIMARY KEY ( patient_register_id )
    );

    
    create table t_roles(role_id INT NOT NULL UNIQUE,roleName VARCHAR(100),accessLevel VARCHAR(100),primary key(role_id));
    
    
    insert into t_roles(role_id,roleName,accessLevel) values(1,'admin','full');
    
    insert into t_roles(role_id,roleName,accessLevel) values(2,'clerk','partial');
    
        
    create table t_users(user_id INT NOT NULL UNIQUE,userName VARCHAR(100),roleId INT NOT NULL);
    
    ALTER TABLE t_users ADD FOREIGN KEY roles_fk(roleId) REFERENCES t_roles(role_id) ON UPDATE CASCADE ON DELETE RESTRICT;

    
    insert into t_users values(1,'admin',1);
    
     insert into t_users values(2,'clerk',2);
    
      create table t_specilizations(specl_id INT NOT NULL UNIQUE,specilizationName VARCHAR(100),primary key(specl_id));
      
       insert into t_specilizations(specl_id,specilizationName) values(1,'headache');
        
       insert into t_specilizations(specl_id,specilizationName) values(2,'backpain');
       
        create table t_doctors(doc_id INT NOT NULL UNIQUE,doctorName VARCHAR(100),specl_Id INT NOT NULL,timingType VARCHAR(100));
    
    ALTER TABLE t_doctors ADD FOREIGN KEY speclId_fk(specl_Id) REFERENCES t_specilizations(specl_Id) ON UPDATE CASCADE ON DELETE RESTRICT;

    ALTER TABLE t_doctors ADD FOREIGN KEY timingType_fk(timingType) REFERENCES doctor_avail_timings(timingType) ON UPDATE CASCADE ON DELETE RESTRICT;

    
    
     insert into t_doctors values(1,'vijay',1,'FULL');   
     
      insert into t_doctors values(2,'anil',2,'FULL'); 
      
      insert into t_doctors values(3,'srinath',1,'FULL');  
     
      
      
      select doctorName,specilizationName from t_doctors as d,t_specilizations as s where d.specl_Id=s.specl_id;
      
      
      select doctorName from t_doctors as d,t_specilizations as s where d.specl_Id=s.specl_id AND specilizationName='headache';
      
       /* select doctorName from t_doctors as d,t_specilizations as s where specilizationName='headache';-->Wrong Query*\
        * 
        * 
        * 
        */
    

    create table doctor_avail_timings(timingType VARCHAR(100),Hours VARCHAR(100),appointmentDuration FLOAT); 
    
    insert into doctor_avail_timings('FULL','10222',0.15);
      
      doctor_avail_timings				
	timingType	Hours	appointmentDuration	
	Full	10-12,14-18,19-22	0.15	
	Half	0		
	Partial	0		

      
      Note:- delete from tablename; ---> To Delete all the rows from the table...
      
      
      
      

