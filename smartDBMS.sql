CREATE DATABASE Smart_Complaint_DB

USE Smart_Complaint_DB


CREATE TABLE Roles (
    Role_ID         INT PRIMARY KEY,
    Role_Name       VARCHAR(50) NOT NULL UNIQUE,
    Description     VARCHAR(200) NULL,
    Access_Level    VARCHAR(20) NOT NULL,
    Status          VARCHAR(20) NOT NULL,
    Created_Date    DATE NOT NULL,
    Can_Create      VARCHAR(5) NOT NULL,
    Can_Update      VARCHAR(5) NOT NULL,
    Can_Delete      VARCHAR(5) NOT NULL,
    Can_View        VARCHAR(5) NOT NULL
)

INSERT INTO Roles VALUES
(1, 'Citizen', 'Can submit complaints', 'Basic', 'Active', '2026-01-01', 'Yes', 'No', 'No', 'Yes'),
(2, 'Registered User', 'Registered complaint user', 'Basic', 'Active', '2026-01-02', 'Yes', 'Yes', 'No', 'Yes'),
(3, 'Student', 'Student reporting issues', 'Basic', 'Active', '2026-01-03', 'Yes', 'Yes', 'No', 'Yes'),
(4, 'Resident', 'Local resident reporting issues', 'Basic', 'Active', '2026-01-04', 'Yes', 'Yes', 'No', 'Yes'),
(5, 'Complainant', 'Person submitting complaints', 'Basic', 'Active', '2026-01-05', 'Yes', 'Yes', 'No', 'Yes'),
(6, 'Guest User', 'Limited access user', 'Limited', 'Active', '2026-01-06', 'Yes', 'No', 'No', 'Yes'),
(7, 'Reporter', 'Person reporting issues', 'Basic', 'Active', '2026-01-07', 'Yes', 'Yes', 'No', 'Yes'),
(8, 'Community Member', 'Community issue reporter', 'Basic', 'Active', '2026-01-08', 'Yes', 'Yes', 'No', 'Yes'),
(9, 'Volunteer', 'Volunteer issue reporter', 'Basic', 'Active', '2026-01-09', 'Yes', 'Yes', 'No', 'Yes'),
(10, 'Department Staff', 'Handles assigned complaints', 'Medium', 'Active', '2026-01-10', 'Yes', 'Yes', 'No', 'Yes'),
(11, 'Support Staff', 'Provides complaint support', 'Medium', 'Active', '2026-01-11', 'Yes', 'Yes', 'No', 'Yes'),
(12, 'Field Staff', 'Handles field complaints', 'Medium', 'Active', '2026-01-12', 'Yes', 'Yes', 'No', 'Yes'),
(13, 'Technical Staff', 'Handles technical issues', 'Medium', 'Active', '2026-01-13', 'Yes', 'Yes', 'No', 'Yes'),
(14, 'Maintenance Staff', 'Handles maintenance issues', 'Medium', 'Active', '2026-01-14', 'Yes', 'Yes', 'No', 'Yes'),
(15, 'Complaint Handler', 'Handles complaints', 'Medium', 'Active', '2026-01-15', 'Yes', 'Yes', 'No', 'Yes'),
(16, 'Verification Officer', 'Verifies complaints', 'Medium', 'Active', '2026-01-16', 'Yes', 'Yes', 'No', 'Yes'),
(17, 'Inspection Officer', 'Inspects reported issues', 'Medium', 'Active', '2026-01-17', 'Yes', 'Yes', 'No', 'Yes'),
(18, 'Assignment Officer', 'Assigns complaints', 'High', 'Active', '2026-01-18', 'Yes', 'Yes', 'No', 'Yes'),
(19, 'Department Officer', 'Manages department complaints', 'High', 'Active', '2026-01-19', 'Yes', 'Yes', 'Yes', 'Yes'),
(20, 'Team Leader', 'Supervises complaint teams', 'High', 'Active', '2026-01-20', 'Yes', 'Yes', 'Yes', 'Yes');

SELECT * FROM Roles


CREATE TABLE Departments (
    Department_ID           INT PRIMARY KEY,
    Department_Name         VARCHAR(100) NOT NULL UNIQUE,
    Department_Code         CHAR(5) NOT NULL UNIQUE,
    Description             VARCHAR(200) NULL,
    Phone                   VARCHAR(15) UNIQUE,
    Email                   VARCHAR(100) UNIQUE,
    Office_Location         VARCHAR(150) NOT NULL,
    Status                  VARCHAR(20) NOT NULL,
    Created_Date            DATE NOT NULL,
    Working_Hours           VARCHAR(50) NULL
)

INSERT INTO Departments VALUES
(1, 'Water Supply Department', 'WATER', 'Handles water supply and leakage complaints', '9876500001', 'water@complaints.com', 'Main Municipal Office', 'Active', '2026-01-01', '09:00 AM - 05:00 PM'),
(2, 'Electricity Department', 'ELEC1', 'Handles electricity related complaints', '9876500002', 'electricity@complaints.com', 'Electricity Office', 'Active', '2026-01-02', '09:00 AM - 05:00 PM'),
(3, 'Road Maintenance Department', 'ROAD1', 'Handles road damage and maintenance', '9876500003', 'roads@complaints.com', 'Road Maintenance Office', 'Active', '2026-01-03', '09:00 AM - 05:00 PM'),
(4, 'Waste Management Department', 'WASTE', 'Handles garbage and waste complaints', '9876500004', 'waste@complaints.com', 'Waste Management Office', 'Active', '2026-01-04', '08:00 AM - 04:00 PM'),
(5, 'Public Health Department', 'HEALT', 'Handles public health related issues', '9876500005', 'health@complaints.com', 'Public Health Office', 'Active', '2026-01-05', '09:00 AM - 05:00 PM'),
(6, 'Public Safety Department', 'SAFE1', 'Handles public safety complaints', '9876500006', 'safety@complaints.com', 'Safety Control Office', 'Active', '2026-01-06', '24 Hours'),
(7, 'Transport Department', 'TRANS', 'Handles public transport complaints', '9876500007', 'transport@complaints.com', 'Transport Office', 'Active', '2026-01-07', '09:00 AM - 05:00 PM'),
(8, 'Traffic Department', 'TRAFF', 'Handles traffic and signal complaints', '9876500008', 'traffic@complaints.com', 'Traffic Control Office', 'Active', '2026-01-08', '24 Hours'),
(9, 'Building Maintenance Department', 'BUILD', 'Handles building maintenance issues', '9876500009', 'building@complaints.com', 'Building Maintenance Office', 'Active', '2026-01-09', '09:00 AM - 05:00 PM'),
(10, 'Public Facility Department', 'FACIL', 'Handles public facility complaints', '9876500010', 'facility@complaints.com', 'Public Facility Office', 'Active', '2026-01-10', '09:00 AM - 05:00 PM'),
(11, 'Internet Services Department', 'INTER', 'Handles internet and connectivity complaints', '9876500011', 'internet@complaints.com', 'IT Service Office', 'Active', '2026-01-11', '09:00 AM - 06:00 PM'),
(12, 'Information Technology Department', 'ITDEP', 'Handles technical and system complaints', '9876500012', 'it@complaints.com', 'IT Department Office', 'Active', '2026-01-12', '09:00 AM - 06:00 PM'),
(13, 'Street Lighting Department', 'LIGHT', 'Handles street light complaints', '9876500013', 'lighting@complaints.com', 'Street Lighting Office', 'Active', '2026-01-13', '06:00 AM - 10:00 PM'),
(14, 'Drainage Department', 'DRAIN', 'Handles drainage and sewage complaints', '9876500014', 'drainage@complaints.com', 'Drainage Office', 'Active', '2026-01-14', '08:00 AM - 05:00 PM'),
(15, 'Fire Safety Department', 'FIRE1', 'Handles fire safety related complaints', '9876500015', 'fire@complaints.com', 'Fire Safety Office', 'Active', '2026-01-15', '24 Hours'),
(16, 'Environmental Department', 'ENVIR', 'Handles environmental complaints', '9876500016', 'environment@complaints.com', 'Environmental Office', 'Active', '2026-01-16', '09:00 AM - 05:00 PM'),
(17, 'Parks and Recreation Department', 'PARKS', 'Handles parks and recreation facilities', '9876500017', 'parks@complaints.com', 'Parks Department Office', 'Active', '2026-01-17', '08:00 AM - 05:00 PM'),
(18, 'Animal Control Department', 'ANIMA', 'Handles stray animal related complaints', '9876500018', 'animals@complaints.com', 'Animal Control Office', 'Active', '2026-01-18', '08:00 AM - 05:00 PM'),
(19, 'Education Department', 'EDUCA', 'Handles education and college related issues', '9876500019', 'education@complaints.com', 'Education Office', 'Active', '2026-01-19', '09:00 AM - 05:00 PM'),
(20, 'Sanitation Department', 'SANIT', 'Handles sanitation and cleanliness complaints', '9876500020', 'sanitation@complaints.com', 'Sanitation Office', 'Active', '2026-01-20', '08:00 AM - 04:00 PM');


SELECT * FROM Departments



CREATE TABLE Statuses (
    Status_ID           INT PRIMARY KEY,
    Status_Name         VARCHAR(50) NOT NULL UNIQUE,
    Description         VARCHAR(200) NULL,
    Status_Order        INT NOT NULL,
    Status_Type         VARCHAR(30) NOT NULL,
    Is_Final            VARCHAR(5) NOT NULL,
    Is_Active           VARCHAR(5) NOT NULL,
    Color_Code          VARCHAR(20) NULL,
    Created_Date        DATE NOT NULL,
    Updated_Date        DATE NULL
)

INSERT INTO Statuses VALUES
(1, 'Submitted', 'Complaint has been submitted', 1, 'Open', 'No', 'Yes', 'Blue', '2026-01-01', NULL),
(2, 'Received', 'Complaint received by the system', 2, 'Open', 'No', 'Yes', 'Sky Blue', '2026-01-02', NULL),
(3, 'Under Review', 'Complaint is under review', 3, 'Processing', 'No', 'Yes', 'Yellow', '2026-01-03', NULL),
(4, 'Verified', 'Complaint has been verified', 4, 'Processing', 'No', 'Yes', 'Light Green', '2026-01-04', NULL),
(5, 'Assigned', 'Complaint assigned to staff', 5, 'Processing', 'No', 'Yes', 'Orange', '2026-01-05', NULL),
(6, 'Accepted', 'Staff accepted the complaint', 6, 'Processing', 'No', 'Yes', 'Gold', '2026-01-06', NULL),
(7, 'Inspection Scheduled', 'Inspection has been scheduled', 7, 'Processing', 'No', 'Yes', 'Purple', '2026-01-07', NULL),
(8, 'Inspection Completed', 'Inspection completed successfully', 8, 'Processing', 'No', 'Yes', 'Violet', '2026-01-08', NULL),
(9, 'In Progress', 'Work is currently in progress', 9, 'Processing', 'No', 'Yes', 'Dark Blue', '2026-01-09', NULL),
(10, 'Pending Approval', 'Awaiting manager approval', 10, 'Processing', 'No', 'Yes', 'Brown', '2026-01-10', NULL),
(11, 'Approved', 'Complaint resolution approved', 11, 'Processing', 'No', 'Yes', 'Green', '2026-01-11', NULL),
(12, 'Escalated', 'Complaint escalated to higher authority', 12, 'Escalation', 'No', 'Yes', 'Red', '2026-01-12', NULL),
(13, 'Reassigned', 'Complaint reassigned to another staff member', 13, 'Processing', 'No', 'Yes', 'Dark Orange', '2026-01-13', NULL),
(14, 'Waiting for User Response', 'Awaiting response from complainant', 14, 'Pending', 'No', 'Yes', 'Pink', '2026-01-14', NULL),
(15, 'On Hold', 'Complaint temporarily paused', 15, 'Pending', 'No', 'Yes', 'Gray', '2026-01-15', NULL),
(16, 'Resolved', 'Issue has been resolved', 16, 'Closed', 'No', 'Yes', 'Dark Green', '2026-01-16', NULL),
(17, 'User Confirmed', 'User confirmed the resolution', 17, 'Closed', 'No', 'Yes', 'Sea Green', '2026-01-17', NULL),
(18, 'Closed', 'Complaint officially closed', 18, 'Closed', 'Yes', 'Yes', 'Black', '2026-01-18', NULL),
(19, 'Rejected', 'Complaint rejected after review', 19, 'Closed', 'Yes', 'Yes', 'Dark Red', '2026-01-19', NULL),
(20, 'Cancelled', 'Complaint cancelled by user or admin', 20, 'Closed', 'Yes', 'Yes', 'Maroon', '2026-01-20', NULL);

Select * from Statuses


CREATE TABLE Priorities (
    Priority_ID          INT PRIMARY KEY,
    Priority_Name        VARCHAR(30) NOT NULL UNIQUE,
    Priority_Level       VARCHAR(20) NOT NULL,
    Response_Hours       INT NOT NULL,
    Resolution_Hours     INT NOT NULL,
    Description          VARCHAR(200) NULL,
    Color_Code           VARCHAR(20) NULL,
    Status               VARCHAR(20) NOT NULL,
    Created_Date         DATE NOT NULL,
    Updated_Date         DATE NULL
)

INSERT INTO Priorities VALUES
(1, 'Low', 'Level 1', 24, 72, 'Minor issue with low impact', 'Green', 'Active', '2026-01-01', '2026-01-05'),
(2, 'Medium', 'Level 2', 12, 48, 'Moderate issue requiring attention', 'Blue', 'Active', '2026-01-02', '2026-01-06'),
(3, 'High', 'Level 3', 6, 24, 'Important issue affecting users', 'Orange', 'Active', '2026-01-03', '2026-01-07'),
(4, 'Critical', 'Level 4', 1, 12, 'Critical issue needing immediate action', 'Red', 'Active', '2026-01-04', '2026-01-08'),
(5, 'Emergency', 'Level 5', 1, 6, 'Emergency affecting public safety', 'Dark Red', 'Active', '2026-01-05', '2026-01-09'),
(6, 'Routine', 'Level 1', 48, 120, 'Routine maintenance issue', 'Light Green', 'Active', '2026-01-06', '2026-01-10'),
(7, 'Informational', 'Level 1', 72, 168, 'Information-only request', 'Gray', 'Active', '2026-01-07', '2026-01-11'),
(8, 'Service Request', 'Level 2', 24, 96, 'Request for a public service', 'Sky Blue', 'Active', '2026-01-08', '2026-01-12'),
(9, 'Maintenance', 'Level 2', 18, 72, 'Maintenance-related issue', 'Teal', 'Active', '2026-01-09', '2026-01-13'),
(10, 'Infrastructure', 'Level 3', 8, 36, 'Infrastructure-related complaint', 'Brown', 'Active', '2026-01-10', '2026-01-14'),
(11, 'Utility', 'Level 3', 6, 30, 'Utility service interruption', 'Dark Blue', 'Active', '2026-01-11', '2026-01-15'),
(12, 'Safety Alert', 'Level 4', 2, 12, 'Potential public safety concern', 'Crimson', 'Active', '2026-01-12', '2026-01-16'),
(13, 'Health Concern', 'Level 4', 3, 18, 'Public health-related issue', 'Purple', 'Active', '2026-01-13', '2026-01-17'),
(14, 'Environmental', 'Level 3', 10, 48, 'Environmental complaint', 'Olive', 'Active', '2026-01-14', '2026-01-18'),
(15, 'Traffic Issue', 'Level 2', 12, 60, 'Traffic management issue', 'Yellow', 'Active', '2026-01-15', '2026-01-19'),
(16, 'Road Hazard', 'Level 4', 4, 24, 'Dangerous road condition', 'Orange Red', 'Active', '2026-01-16', '2026-01-20'),
(17, 'Water Supply', 'Level 3', 8, 36, 'Water service disruption', 'Aqua', 'Active', '2026-01-17', '2026-01-21'),
(18, 'Power Failure', 'Level 5', 1, 8, 'Major power outage', 'Black', 'Active', '2026-01-18', '2026-01-22'),
(19, 'Escalated', 'Level 5', 1, 4, 'Issue escalated to higher authority', 'Dark Purple', 'Active', '2026-01-19', '2026-01-23'),
(20, 'Special Case', 'Level 3', 6, 24, 'Special handling required', 'Gold', 'Active', '2026-01-20', '2026-01-24');

Select * from Priorities


CREATE TABLE Categories (
    Category_ID          INT PRIMARY KEY,
    Category_Name        VARCHAR(100) NOT NULL UNIQUE,
    Category_Code        CHAR(5) NOT NULL UNIQUE,
    Description          VARCHAR(200) NULL,
    Status               VARCHAR(20) NOT NULL,
    Created_Date         DATE NOT NULL,
    Updated_Date         DATE NULL,
    Is_Recurring         VARCHAR(5) NOT NULL,
    Display_Order        INT NOT NULL,
    Keywords             VARCHAR(300) NULL
)

INSERT INTO Categories VALUES
(1,'Water Supply','WATR1','Issues related to water supply and leakage','Active','2026-01-01','2026-01-05','Yes',1,'water,leakage,pipeline,supply'),
(2,'Electricity','ELEC1','Power outage and electrical issues','Active','2026-01-02','2026-01-06','Yes',2,'electricity,power,outage,voltage'),
(3,'Road Maintenance','ROAD1','Road damage and pothole complaints','Active','2026-01-03','2026-01-07','Yes',3,'road,pothole,street,repair'),
(4,'Waste Management','WAST1','Garbage collection and waste disposal','Active','2026-01-04','2026-01-08','Yes',4,'waste,garbage,collection,cleaning'),
(5,'Public Health','HLTH1','Health and sanitation issues','Active','2026-01-05','2026-01-09','Yes',5,'health,sanitation,disease,hygiene'),
(6,'Public Safety','SAFE1','Safety and security concerns','Active','2026-01-06','2026-01-10','Yes',6,'safety,security,danger,risk'),
(7,'Traffic Management','TRAF1','Traffic congestion and signals','Active','2026-01-07','2026-01-11','Yes',7,'traffic,signal,jam,road'),
(8,'Transportation','TRAN1','Public transportation services','Active','2026-01-08','2026-01-12','Yes',8,'bus,transport,vehicle,travel'),
(9,'Street Lighting','LGHT1','Street light maintenance issues','Active','2026-01-09','2026-01-13','Yes',9,'light,street,dark,pole'),
(10,'Drainage','DRAN1','Drainage and sewage complaints','Active','2026-01-10','2026-01-14','Yes',10,'drainage,sewage,water,overflow'),
(11,'Internet Services','NET01','Internet and network issues','Active','2026-01-11','2026-01-15','Yes',11,'internet,wifi,network,connection'),
(12,'Public Facilities','FACI1','Issues in public facilities','Active','2026-01-12','2026-01-16','Yes',12,'facility,park,toilet,building'),
(13,'Environmental','ENVR1','Environmental concerns and pollution','Active','2026-01-13','2026-01-17','Yes',13,'pollution,environment,air,noise'),
(14,'Animal Control','ANML1','Stray animal and pet issues','Active','2026-01-14','2026-01-18','Yes',14,'animal,dog,cat,stray'),
(15,'Housing','HOUS1','Housing and residential complaints','Active','2026-01-15','2026-01-19','No',15,'house,residence,building,property'),
(16,'Parking','PARK1','Parking violations and issues','Active','2026-01-16','2026-01-20','Yes',16,'parking,vehicle,space,illegal'),
(17,'Emergency Services','EMRG1','Emergency response services','Active','2026-01-17','2026-01-21','Yes',17,'emergency,ambulance,fire,rescue'),
(18,'Consumer Services','CONS1','Consumer service complaints','Active','2026-01-18','2026-01-22','No',18,'consumer,service,customer,support'),
(19,'Communication Services','COMM1','Telecommunication issues','Active','2026-01-19','2026-01-23','Yes',19,'communication,mobile,network,call'),
(20,'Administrative Services','ADMN1','Administrative and office issues','Active','2026-01-20','2026-01-24','No',20,'administration,office,document,service');


CREATE TABLE Locations (
    Location_ID           INT PRIMARY KEY,
    Address               VARCHAR(200) NOT NULL,
    Area                  VARCHAR(100) NOT NULL,
    City                  VARCHAR(100) NOT NULL,
    District              VARCHAR(100) NULL,
    State                 VARCHAR(100) NOT NULL,
    Pincode               CHAR(6) NOT NULL,
    Location_Type         VARCHAR(50) NOT NULL,
    Latitude              VARCHAR(20) NULL,
    Longitude             VARCHAR(20) NULL
)

INSERT INTO Locations VALUES
(1,'MG Road','Central','Kozhikode','Kozhikode','Kerala','673001','Urban','11.2588','75.7804'),
(2,'Beach Road','Beach Area','Kozhikode','Kozhikode','Kerala','673032','Urban','11.2740','75.7680'),
(3,'Civil Station Road','Civil Station','Kozhikode','Kozhikode','Kerala','673020','Government','11.2565','75.7812'),
(4,'Medical College Road','Chevayur','Kozhikode','Kozhikode','Kerala','673008','Hospital','11.2735','75.8360'),
(5,'NH 66 Junction','Ramanattukara','Kozhikode','Kozhikode','Kerala','673633','Highway','11.1790','75.8670'),
(6,'Town Hall Road','Palayam','Thiruvananthapuram','Thiruvananthapuram','Kerala','695033','Urban','8.5241','76.9366'),
(7,'Marine Drive','Ernakulam','Kochi','Ernakulam','Kerala','682011','Urban','9.9816','76.2750'),
(8,'Temple Road','Thrissur Town','Thrissur','Thrissur','Kerala','680001','Urban','10.5276','76.2144'),
(9,'Bus Stand Road','Kannur Town','Kannur','Kannur','Kerala','670001','Transport','11.8745','75.3704'),
(10,'Market Road','Palakkad Town','Palakkad','Palakkad','Kerala','678001','Commercial','10.7867','76.6548'),
(11,'Railway Station Road','Kottayam','Kottayam','Kottayam','Kerala','686001','Transport','9.5916','76.5222'),
(12,'College Road','Manjeri','Malappuram','Malappuram','Kerala','676121','Educational','11.1202','76.1191'),
(13,'Airport Road','Nedumbassery','Kochi','Ernakulam','Kerala','683111','Airport','10.1520','76.3920'),
(14,'Harbour Road','Beypore','Kozhikode','Kozhikode','Kerala','673015','Port','11.1711','75.8043'),
(15,'Park Avenue','Vellayil','Kozhikode','Kozhikode','Kerala','673011','Park','11.2690','75.7832'),
(16,'IT Park Road','Cyber Park','Kozhikode','Kozhikode','Kerala','673016','Technology','11.2300','75.8900'),
(17,'Main Street','Vadakara','Kozhikode','Kozhikode','Kerala','673101','Urban','11.6075','75.5920'),
(18,'Station Road','Tirur','Malappuram','Malappuram','Kerala','676101','Transport','10.9167','75.9167'),
(19,'Court Road','Mananthavady','Wayanad','Wayanad','Kerala','670645','Government','11.8010','76.0004'),
(20,'Hill Road','Kalpetta','Wayanad','Wayanad','Kerala','673121','Residential','11.6085','76.0834');

CREATE TABLE Users (
    User_ID          INT PRIMARY KEY,
    Role_ID          INT NOT NULL,
    Full_Name        VARCHAR(100) NOT NULL,
    Email            VARCHAR(100) NOT NULL UNIQUE,
    Phone            VARCHAR(15) UNIQUE,
    Password         VARCHAR(255) NOT NULL,
    Gender           VARCHAR(10) NULL,
    Registration_Date DATE NOT NULL,
    City             VARCHAR(100) NULL,
    Account_Status   VARCHAR(20) NOT NULL,

    FOREIGN KEY (Role_ID)
        REFERENCES Roles(Role_ID)
)

INSERT INTO Users VALUES
(1,1,'Akhil Nair','akhil1@gmail.com','9876501001','Pass@123','Male','2026-02-01','Kozhikode','Active'),
(2,2,'Anu Thomas','anu2@gmail.com','9876501002','Pass@123','Female','2026-02-02','Kochi','Active'),
(3,3,'Rahul Das','rahul3@gmail.com','9876501003','Pass@123','Male','2026-02-03','Kannur','Active'),
(4,4,'Meera Joseph','meera4@gmail.com','9876501004','Pass@123','Female','2026-02-04','Thrissur','Active'),
(5,5,'Arjun Kumar','arjun5@gmail.com','9876501005','Pass@123','Male','2026-02-05','Palakkad','Active'),
(6,6,'Sneha Roy','sneha6@gmail.com','9876501006','Pass@123','Female','2026-02-06','Kozhikode','Active'),
(7,7,'Nikhil Raj','nikhil7@gmail.com','9876501007','Pass@123','Male','2026-02-07','Kochi','Active'),
(8,8,'Athira P','athira8@gmail.com','9876501008','Pass@123','Female','2026-02-08','Kannur','Active'),
(9,9,'Vishnu M','vishnu9@gmail.com','9876501009','Pass@123','Male','2026-02-09','Malappuram','Active'),
(10,10,'Aswin K','aswin10@gmail.com','9876501010','Pass@123','Male','2026-02-10','Kozhikode','Active'),
(11,11,'Devika S','devika11@gmail.com','9876501011','Pass@123','Female','2026-02-11','Thrissur','Active'),
(12,12,'Abhinav P','abhinav12@gmail.com','9876501012','Pass@123','Male','2026-02-12','Kochi','Active'),
(13,13,'Keerthana R','keerthana13@gmail.com','9876501013','Pass@123','Female','2026-02-13','Palakkad','Active'),
(14,14,'Fahad Ali','fahad14@gmail.com','9876501014','Pass@123','Male','2026-02-14','Kozhikode','Active'),
(15,15,'Anjali N','anjali15@gmail.com','9876501015','Pass@123','Female','2026-02-15','Kannur','Active'),
(16,16,'Rohit V','rohit16@gmail.com','9876501016','Pass@123','Male','2026-02-16','Kochi','Active'),
(17,17,'Nandana K','nandana17@gmail.com','9876501017','Pass@123','Female','2026-02-17','Thrissur','Active'),
(18,18,'Jithin P','jithin18@gmail.com','9876501018','Pass@123','Male','2026-02-18','Kozhikode','Active'),
(19,19,'Arya S','arya19@gmail.com','9876501019','Pass@123','Female','2026-02-19','Palakkad','Active'),
(20,20,'Shyam K','shyam20@gmail.com','9876501020','Pass@123','Male','2026-02-20','Malappuram','Active'),
(21,21,'Neha B','neha21@gmail.com','9876501021','Pass@123','Female','2026-02-21','Kochi','Active'),
(22,22,'Adil Rahman','adil22@gmail.com','9876501022','Pass@123','Male','2026-02-22','Kannur','Active'),
(23,23,'Parvathy M','parvathy23@gmail.com','9876501023','Pass@123','Female','2026-02-23','Thrissur','Active'),
(24,24,'Alan George','alan24@gmail.com','9876501024','Pass@123','Male','2026-02-24','Kozhikode','Active'),
(25,25,'Nimisha P','nimisha25@gmail.com','9876501025','Pass@123','Female','2026-02-25','Kottayam','Active'),
(26,26,'Riyas K','riyas26@gmail.com','9876501026','Pass@123','Male','2026-02-26','Kochi','Active'),
(27,27,'Aiswarya T','aiswarya27@gmail.com','9876501027','Pass@123','Female','2026-02-27','Kannur','Active'),
(28,28,'Manu S','manu28@gmail.com','9876501028','Pass@123','Male','2026-02-28','Kozhikode','Active'),
(29,29,'Reshma V','reshma29@gmail.com','9876501029','Pass@123','Female','2026-03-01','Thrissur','Active'),
(30,30,'Sarath P','sarath30@gmail.com','9876501030','Pass@123','Male','2026-03-02','Kochi','Active');



CREATE TABLE Staff (
    Staff_ID           INT PRIMARY KEY,
    User_ID            INT NOT NULL UNIQUE,
    Department_ID      INT NOT NULL,
    Employee_Code      CHAR(8) NOT NULL UNIQUE,
    Designation        VARCHAR(80) NOT NULL,
    Joining_Date       DATE NOT NULL,
    Specialization     VARCHAR(100) NULL,
    Staff_Status       VARCHAR(20) NOT NULL,
    Work_Email         VARCHAR(100) UNIQUE,
    Work_Phone         VARCHAR(15) UNIQUE,

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID),

    FOREIGN KEY (Department_ID)
        REFERENCES Departments(Department_ID)
)

INSERT INTO Staff VALUES
(1,10,1,'EMP00001','Water Supply Officer','2024-01-10','Water Pipeline','Active','staff01@complaints.com','9876510001'),
(2,11,2,'EMP00002','Electrical Technician','2024-02-15','Electrical Maintenance','Active','staff02@complaints.com','9876510002'),
(3,12,3,'EMP00003','Road Maintenance Officer','2024-03-12','Road Repair','Active','staff03@complaints.com','9876510003'),
(4,13,4,'EMP00004','Waste Management Officer','2024-04-18','Waste Collection','Active','staff04@complaints.com','9876510004'),
(5,14,5,'EMP00005','Health Inspector','2024-05-20','Public Health','Active','staff05@complaints.com','9876510005'),
(6,15,6,'EMP00006','Safety Officer','2024-06-14','Public Safety','Active','staff06@complaints.com','9876510006'),
(7,16,7,'EMP00007','Transport Officer','2024-07-22','Public Transport','Active','staff07@complaints.com','9876510007'),
(8,17,8,'EMP00008','Traffic Officer','2024-08-11','Traffic Management','Active','staff08@complaints.com','9876510008'),
(9,18,9,'EMP00009','Lighting Technician','2024-09-16','Street Lighting','Active','staff09@complaints.com','9876510009'),
(10,19,10,'EMP00010','Facility Officer','2024-10-05','Public Facilities','Active','staff10@complaints.com','9876510010'),
(11,20,11,'EMP00011','Network Technician','2024-10-20','Internet Services','Active','staff11@complaints.com','9876510011'),
(12,21,12,'EMP00012','IT Support Officer','2024-11-12','Information Technology','Active','staff12@complaints.com','9876510012'),
(13,22,13,'EMP00013','Drainage Officer','2024-11-25','Drainage Maintenance','Active','staff13@complaints.com','9876510013'),
(14,23,14,'EMP00014','Environmental Officer','2024-12-10','Environmental Services','Active','staff14@complaints.com','9876510014'),
(15,24,15,'EMP00015','Emergency Officer','2025-01-08','Emergency Services','Active','staff15@complaints.com','9876510015'),
(16,25,16,'EMP00016','Animal Control Officer','2025-02-14','Animal Control','Active','staff16@complaints.com','9876510016'),
(17,26,17,'EMP00017','Housing Officer','2025-03-18','Housing Services','Active','staff17@complaints.com','9876510017'),
(18,27,18,'EMP00018','Parking Officer','2025-04-22','Parking Management','Active','staff18@complaints.com','9876510018'),
(19,28,19,'EMP00019','Communication Officer','2025-05-16','Communication Services','Active','staff19@complaints.com','9876510019'),
(20,29,20,'EMP00020','Administrative Officer','2025-06-10','Administrative Services','Active','staff20@complaints.com','9876510020');




CREATE TABLE ResolutionTypes (
    ResolutionType_ID        INT PRIMARY KEY,
    Department_ID            INT NOT NULL,
    Resolution_Name          VARCHAR(100) NOT NULL UNIQUE,
    Description              VARCHAR(200) NULL,
    Estimated_Days           INT NOT NULL,
    Status                   VARCHAR(20) NOT NULL,
    Requires_Visit           VARCHAR(5) NOT NULL,
    Requires_Approval        VARCHAR(5) NOT NULL,
    Created_Date             DATE NOT NULL,
    Updated_Date             DATE NULL,

    FOREIGN KEY (Department_ID)
        REFERENCES Departments(Department_ID)

)

INSERT INTO ResolutionTypes VALUES
(1,1,'Pipeline Repair','Repair damaged water pipelines',3,'Active','Yes','No','2026-01-01','2026-01-05'),
(2,2,'Electrical Repair','Repair electrical faults and wiring',2,'Active','Yes','No','2026-01-02','2026-01-06'),
(3,3,'Road Repair','Repair damaged roads and potholes',5,'Active','Yes','Yes','2026-01-03','2026-01-07'),
(4,4,'Waste Collection','Collect and remove accumulated waste',2,'Active','Yes','No','2026-01-04','2026-01-08'),
(5,5,'Health Inspection','Inspect public health related issues',4,'Active','Yes','Yes','2026-01-05','2026-01-09'),
(6,6,'Safety Inspection','Inspect and resolve public safety issues',2,'Active','Yes','Yes','2026-01-06','2026-01-10'),
(7,7,'Transport Service','Resolve public transport complaints',4,'Active','Yes','No','2026-01-07','2026-01-11'),
(8,8,'Traffic Signal Repair','Repair damaged traffic signals',2,'Active','Yes','No','2026-01-08','2026-01-12'),
(9,9,'Street Light Repair','Repair or replace street lights',3,'Active','Yes','No','2026-01-09','2026-01-13'),
(10,10,'Facility Maintenance','Repair public facilities',5,'Active','Yes','Yes','2026-01-10','2026-01-14'),
(11,11,'Internet Connection Repair','Resolve internet connectivity issues',2,'Active','No','No','2026-01-11','2026-01-15'),
(12,12,'Technical Support','Resolve technical and system issues',3,'Active','No','No','2026-01-12','2026-01-16'),
(13,13,'Drainage Cleaning','Clean blocked drains and drainage systems',3,'Active','Yes','No','2026-01-13','2026-01-17'),
(14,14,'Environmental Cleanup','Clean and resolve environmental issues',5,'Active','Yes','Yes','2026-01-14','2026-01-18'),
(15,15,'Emergency Response','Provide emergency response services',1,'Active','Yes','Yes','2026-01-15','2026-01-19'),
(16,16,'Animal Removal','Handle stray animal complaints',2,'Active','Yes','No','2026-01-16','2026-01-20'),
(17,17,'Housing Inspection','Inspect housing related complaints',5,'Active','Yes','Yes','2026-01-17','2026-01-21'),
(18,18,'Parking Enforcement','Resolve parking violations',2,'Active','Yes','No','2026-01-18','2026-01-22'),
(19,19,'Communication Repair','Resolve communication service issues',3,'Active','No','No','2026-01-19','2026-01-23'),
(20,20,'Administrative Review','Review and resolve administrative complaints',4,'Active','No','Yes','2026-01-20','2026-01-24');


CREATE TABLE SubCategories (
    SubCategory_ID     INT PRIMARY KEY,
    Category_ID        INT NOT NULL,
    Priority_ID        INT NOT NULL,
    SubCategory_Name   VARCHAR(100) NOT NULL,
    Description        VARCHAR(200) NULL,
    Status             VARCHAR(20) NOT NULL,
    Created_Date       DATE NOT NULL,
    Updated_Date       DATE NULL,
    Expected_Days      INT NOT NULL,
    Keywords           VARCHAR(300) NULL,

    FOREIGN KEY (Category_ID)
        REFERENCES Categories(Category_ID),

    FOREIGN KEY (Priority_ID)
        REFERENCES Priorities(Priority_ID),

    UNIQUE (Category_ID, SubCategory_Name)
)

INSERT INTO SubCategories VALUES
(1,1,3,'Water Leakage','Leakage from water pipelines','Active','2026-02-01','2026-02-05',3,'water,leakage,pipeline'),
(2,1,2,'Low Water Pressure','Low pressure in water supply','Active','2026-02-02','2026-02-06',2,'water,pressure,supply'),
(3,2,5,'Power Outage','Complete electricity power failure','Active','2026-02-03','2026-02-07',1,'power,outage,electricity'),
(4,2,3,'Voltage Problem','High or low voltage problem','Active','2026-02-04','2026-02-08',2,'voltage,electricity,power'),
(5,3,4,'Pothole','Damaged road with potholes','Active','2026-02-05','2026-02-09',4,'road,pothole,damage'),
(6,3,3,'Road Damage','Broken or damaged road surface','Active','2026-02-06','2026-02-10',5,'road,damage,repair'),
(7,4,2,'Garbage Collection','Garbage not collected on time','Active','2026-02-07','2026-02-11',2,'garbage,waste,collection'),
(8,4,3,'Illegal Dumping','Waste dumped in unauthorized areas','Active','2026-02-08','2026-02-12',3,'waste,dumping,garbage'),
(9,5,4,'Public Hygiene','Poor hygiene in public areas','Active','2026-02-09','2026-02-13',4,'health,hygiene,cleaning'),
(10,6,5,'Safety Hazard','Dangerous condition in public area','Active','2026-02-10','2026-02-14',1,'safety,hazard,danger'),
(11,7,2,'Bus Delay','Delay in public bus services','Active','2026-02-11','2026-02-15',3,'bus,delay,transport'),
(12,8,3,'Signal Failure','Traffic signal not working','Active','2026-02-12','2026-02-16',2,'traffic,signal,repair'),
(13,9,3,'Street Light Failure','Street light not working','Active','2026-02-13','2026-02-17',3,'street,light,electricity'),
(14,10,2,'Public Toilet Issue','Maintenance issue in public toilet','Active','2026-02-14','2026-02-18',3,'toilet,facility,cleaning'),
(15,11,3,'Internet Disconnection','Internet connection frequently disconnects','Active','2026-02-15','2026-02-19',2,'internet,connection,network'),
(16,12,2,'Computer System Issue','Problem with computer or system','Active','2026-02-16','2026-02-20',3,'computer,system,technical'),
(17,13,3,'Blocked Drain','Drain blocked by waste or debris','Active','2026-02-17','2026-02-21',3,'drain,blockage,waste'),
(18,14,3,'Air Pollution','Excessive air pollution complaint','Active','2026-02-18','2026-02-22',5,'air,pollution,environment'),
(19,15,5,'Emergency Response','Delay in emergency service response','Active','2026-02-19','2026-02-23',1,'emergency,response,rescue'),
(20,16,2,'Stray Animal','Stray animal causing public problems','Active','2026-02-20','2026-02-24',2,'animal,stray,dog');


CREATE TABLE Complaints (
    Complaint_ID        INT PRIMARY KEY,
    User_ID             INT NOT NULL,
    SubCategory_ID      INT NOT NULL,
    Location_ID         INT NOT NULL,
    Status_ID           INT NOT NULL,
    Priority_ID         INT NOT NULL,
    ResolutionType_ID   INT NULL,
    Complaint_Title     VARCHAR(150) NOT NULL,
    Complaint_Description TEXT NOT NULL,
    Created_Date        DATETIME NOT NULL,

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID),

    FOREIGN KEY (SubCategory_ID)
        REFERENCES SubCategories(SubCategory_ID),

    FOREIGN KEY (Location_ID)
        REFERENCES Locations(Location_ID),

    FOREIGN KEY (Status_ID)
        REFERENCES Statuses(Status_ID),

    FOREIGN KEY (Priority_ID)
        REFERENCES Priorities(Priority_ID),

    FOREIGN KEY (ResolutionType_ID)
        REFERENCES ResolutionTypes(ResolutionType_ID)
)

INSERT INTO Complaints VALUES
(1,1,1,1,1,3,1,'Water Pipeline Leakage','Water is leaking continuously from the main pipeline near the road.','2026-02-01 09:15:00'),
(2,2,2,2,3,2,1,'Low Water Pressure','Water pressure has been very low in the area for the past two days.','2026-02-02 10:30:00'),
(3,3,3,3,5,5,2,'Power Outage','There has been a complete power outage in the area since morning.','2026-02-03 08:45:00'),
(4,4,4,4,9,3,2,'Voltage Fluctuation','Frequent voltage fluctuations are affecting electrical appliances.','2026-02-04 11:20:00'),
(5,5,5,5,4,4,3,'Large Road Pothole','A large pothole has developed on the main road and is dangerous for vehicles.','2026-02-05 12:10:00'),
(6,6,6,6,9,3,3,'Damaged Road Surface','The road surface is badly damaged and requires immediate repair.','2026-02-06 14:25:00'),
(7,7,7,7,5,2,4,'Garbage Not Collected','Garbage has not been collected from the area for several days.','2026-02-07 09:40:00'),
(8,8,8,8,12,3,4,'Illegal Waste Dumping','Waste is being dumped illegally near the public road.','2026-02-08 15:30:00'),
(9,9,9,9,3,4,5,'Poor Public Hygiene','The public area is not being cleaned properly and has poor hygiene conditions.','2026-02-09 10:15:00'),
(10,10,10,10,5,5,6,'Public Safety Hazard','An unsafe structure near the public area may cause accidents.','2026-02-10 08:30:00'),
(11,11,11,11,3,2,7,'Bus Service Delay','The scheduled bus service is frequently delayed in this area.','2026-02-11 13:20:00'),
(12,12,12,12,9,3,8,'Traffic Signal Not Working','The traffic signal at the junction is not working properly.','2026-02-12 07:50:00'),
(13,13,13,13,5,3,9,'Street Light Failure','Several street lights are not working during the night.','2026-02-13 18:10:00'),
(14,14,14,14,3,2,10,'Public Toilet Maintenance','The public toilet requires cleaning and maintenance.','2026-02-14 11:45:00'),
(15,15,15,15,9,3,11,'Internet Disconnection','The internet connection keeps disconnecting throughout the day.','2026-02-15 16:25:00'),
(16,16,16,16,4,2,12,'Computer System Problem','The computer system is not working properly and requires technical support.','2026-02-16 09:55:00'),
(17,17,17,17,5,3,13,'Blocked Drain','The drainage system is blocked and wastewater is accumulating on the road.','2026-02-17 10:40:00'),
(18,18,18,18,3,3,14,'Air Pollution Complaint','Heavy smoke and air pollution are affecting residents in the area.','2026-02-18 14:15:00'),
(19,19,19,19,5,5,15,'Emergency Response Delay','Emergency service response was delayed during an urgent situation.','2026-02-19 20:05:00'),
(20,20,20,20,4,2,16,'Stray Animal Problem','Several stray animals are creating problems for people in the area.','2026-02-20 17:30:00');


CREATE TABLE Assignments (
    Assignment_ID        INT PRIMARY KEY,
    Complaint_ID         INT NOT NULL,
    Staff_ID             INT NOT NULL,
    Assigned_By          INT NOT NULL,
    Assigned_Date        DATE NOT NULL,
    Due_Date             DATE NOT NULL,
    Completed_Date       DATE NULL,
    Assignment_Status    VARCHAR(30) NOT NULL,
    Remarks              VARCHAR(300) NULL,
    Is_Current           VARCHAR(5) NOT NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (Staff_ID)
        REFERENCES Staff(Staff_ID),

    FOREIGN KEY (Assigned_By)
        REFERENCES Users(User_ID)
)

INSERT INTO Assignments VALUES
(1,1,1,27,'2026-02-01','2026-02-04','2026-02-03','Completed','Pipeline repair completed successfully','No'),
(2,2,2,28,'2026-02-02','2026-02-05',NULL,'In Progress','Water pressure inspection is in progress','Yes'),
(3,3,3,29,'2026-02-03','2026-02-04','2026-02-04','Completed','Power supply restored','No'),
(4,4,4,27,'2026-02-04','2026-02-06',NULL,'In Progress','Voltage problem is being inspected','Yes'),
(5,5,5,28,'2026-02-05','2026-02-09',NULL,'Assigned','Road inspection scheduled','Yes'),
(6,6,6,29,'2026-02-06','2026-02-11',NULL,'In Progress','Road repair work started','Yes'),
(7,7,7,27,'2026-02-07','2026-02-09','2026-02-09','Completed','Garbage was collected','No'),
(8,8,8,28,'2026-02-08','2026-02-11',NULL,'Escalated','Illegal dumping reported for further action','Yes'),
(9,9,9,29,'2026-02-09','2026-02-13',NULL,'In Progress','Public area inspection underway','Yes'),
(10,10,10,27,'2026-02-10','2026-02-11',NULL,'Assigned','Safety inspection scheduled','Yes'),
(11,11,11,28,'2026-02-11','2026-02-14',NULL,'In Progress','Transport service issue under investigation','Yes'),
(12,12,12,29,'2026-02-12','2026-02-14','2026-02-14','Completed','Traffic signal repaired','No'),
(13,13,13,27,'2026-02-13','2026-02-16',NULL,'In Progress','Street light repair work started','Yes'),
(14,14,14,28,'2026-02-14','2026-02-17',NULL,'Assigned','Cleaning team assigned to facility','Yes'),
(15,15,15,29,'2026-02-15','2026-02-17','2026-02-17','Completed','Internet connection restored','No'),
(16,16,16,27,'2026-02-16','2026-02-19',NULL,'In Progress','Technical team checking the system','Yes'),
(17,17,17,28,'2026-02-17','2026-02-20',NULL,'In Progress','Drain cleaning work is underway','Yes'),
(18,18,18,29,'2026-02-18','2026-02-23',NULL,'Assigned','Environmental inspection scheduled','Yes'),
(19,19,19,27,'2026-02-19','2026-02-20',NULL,'Escalated','Emergency response issue escalated','Yes'),
(20,20,20,28,'2026-02-20','2026-02-22','2026-02-22','Completed','Stray animal complaint handled','No');




CREATE TABLE ComplaintUpdates (
    Update_ID             INT PRIMARY KEY,
    Complaint_ID          INT NOT NULL,
    Staff_ID              INT NOT NULL,
    Status_ID             INT NOT NULL,
    Update_Message        VARCHAR(500) NOT NULL,
    Update_Date           DATETIME NOT NULL,
    Work_Hours            INT NULL,
    Action_Taken          VARCHAR(300) NULL,
    Next_Action           VARCHAR(300) NULL,
    Is_Internal           VARCHAR(5) NOT NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (Staff_ID)
        REFERENCES Staff(Staff_ID),

    FOREIGN KEY (Status_ID)
        REFERENCES Statuses(Status_ID)
)

INSERT INTO ComplaintUpdates VALUES
(1,1,1,16,'Water pipeline leakage has been repaired','2026-02-03 15:30:00',5,'Damaged pipeline section was replaced','Final inspection will be completed','No'),
(2,2,2,9,'Water pressure problem is being investigated','2026-02-03 11:00:00',2,'Water pressure was checked at multiple points','Check the main supply valve','Yes'),
(3,3,3,16,'Electricity supply has been restored','2026-02-04 14:20:00',4,'Faulty electrical connection was repaired','Monitor the power supply','No'),
(4,4,4,9,'Voltage fluctuation is under investigation','2026-02-05 10:30:00',3,'Voltage levels were measured','Inspect the local transformer','Yes'),
(5,5,5,4,'Road pothole has been inspected','2026-02-06 12:15:00',2,'Pothole size and road condition were checked','Prepare the road repair plan','No'),
(6,6,6,9,'Road repair work has started','2026-02-08 13:45:00',6,'Damaged road surface was cleared','Complete road resurfacing','No'),
(7,7,7,16,'Garbage has been collected','2026-02-09 10:00:00',3,'Waste was removed from the reported location','Schedule regular collection','No'),
(8,8,8,12,'Illegal dumping complaint has been escalated','2026-02-09 14:30:00',2,'Location was inspected and evidence collected','Forward case to enforcement team','Yes'),
(9,9,9,3,'Public hygiene issue is under review','2026-02-10 11:20:00',3,'Area was inspected for sanitation problems','Arrange cleaning service','No'),
(10,10,10,4,'Safety hazard has been inspected','2026-02-10 16:00:00',2,'Unsafe structure was examined','Request immediate removal','Yes'),
(11,11,11,9,'Transport service delay is being investigated','2026-02-12 10:15:00',3,'Bus schedule and route were checked','Contact transport operator','No'),
(12,12,12,16,'Traffic signal has been repaired','2026-02-14 12:30:00',4,'Faulty signal component was replaced','Test signal operation','No'),
(13,13,13,9,'Street light repair is in progress','2026-02-14 19:00:00',3,'Faulty street light was inspected','Replace damaged lighting unit','No'),
(14,14,14,3,'Public toilet maintenance issue is under review','2026-02-15 09:30:00',2,'Facility condition was inspected','Send cleaning and maintenance team','No'),
(15,15,15,16,'Internet connection has been restored','2026-02-17 15:45:00',4,'Network equipment was restarted and connection restored','Monitor network stability','No'),
(16,16,16,9,'Computer system issue is being investigated','2026-02-17 11:30:00',3,'System hardware and software were checked','Replace faulty component if required','Yes'),
(17,17,17,9,'Blocked drainage system is being cleaned','2026-02-18 13:20:00',5,'Waste blocking the drain was removed','Complete drainage cleaning','No'),
(18,18,18,3,'Air pollution complaint is under investigation','2026-02-19 12:00:00',3,'Pollution source was inspected','Collect additional environmental information','Yes'),
(19,19,19,12,'Emergency response complaint has been escalated','2026-02-19 21:30:00',2,'Response delay was reviewed','Submit report to emergency management','Yes'),
(20,20,20,16,'Stray animal complaint has been resolved','2026-02-22 11:00:00',3,'Animal control team handled the reported animals','Continue monitoring the area','No');





CREATE TABLE ComplaintVerification (
    Verification_ID       INT PRIMARY KEY,
    Complaint_ID          INT NOT NULL,
    Staff_ID              INT NOT NULL,
    Department_ID         INT NOT NULL,
    Location_ID           INT NOT NULL,
    Verification_Date     DATE NOT NULL,
    Verification_Status   VARCHAR(30) NOT NULL,
    Issue_Found           VARCHAR(10) NOT NULL,
    Verification_Notes    VARCHAR(500) NULL,
    Next_Action           VARCHAR(300) NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (Staff_ID)
        REFERENCES Staff(Staff_ID),

    FOREIGN KEY (Department_ID)
        REFERENCES Departments(Department_ID),

    FOREIGN KEY (Location_ID)
        REFERENCES Locations(Location_ID)
)

INSERT INTO ComplaintVerification VALUES
(1,1,1,1,1,'2026-02-02','Verified','Yes','Water leakage was confirmed at the reported pipeline location','Proceed with pipeline repair'),
(2,2,1,1,2,'2026-02-03','Verified','Yes','Low water pressure was confirmed during inspection','Check main supply valve'),
(3,3,2,2,3,'2026-02-04','Verified','Yes','Power outage was confirmed in the reported area','Restore electrical supply'),
(4,4,2,2,4,'2026-02-05','Verified','Yes','Voltage fluctuation was detected during testing','Inspect local transformer'),
(5,5,3,3,5,'2026-02-06','Verified','Yes','Large pothole was found on the reported road','Schedule road repair'),
(6,6,3,3,6,'2026-02-07','Verified','Yes','Road surface damage was confirmed','Start road repair work'),
(7,7,4,4,7,'2026-02-08','Verified','Yes','Uncollected garbage was found at the location','Arrange waste collection'),
(8,8,4,4,8,'2026-02-09','Verified','Yes','Illegal waste dumping was confirmed','Escalate to enforcement team'),
(9,9,5,5,9,'2026-02-10','Verified','Yes','Poor hygiene conditions were found in the area','Arrange sanitation service'),
(10,10,6,6,10,'2026-02-10','Verified','Yes','Public safety hazard was confirmed','Request immediate corrective action'),
(11,11,7,7,11,'2026-02-11','Verified','Yes','Transport service delay was confirmed','Contact transport operator'),
(12,12,8,8,12,'2026-02-12','Verified','Yes','Traffic signal failure was confirmed','Repair traffic signal'),
(13,13,9,9,13,'2026-02-13','Verified','Yes','Street light was found non-functional','Replace faulty lighting unit'),
(14,14,10,10,14,'2026-02-14','Verified','Yes','Public toilet maintenance issue was confirmed','Send maintenance team'),
(15,15,11,11,15,'2026-02-15','Verified','Yes','Internet disconnection was confirmed','Check network equipment'),
(16,16,12,12,16,'2026-02-16','Verified','Yes','Computer system problem was confirmed','Perform technical repair'),
(17,17,13,14,17,'2026-02-17','Verified','Yes','Drain blockage was found at the reported location','Start drain cleaning'),
(18,18,14,16,18,'2026-02-18','Verified','Yes','Air pollution issue was observed','Conduct environmental inspection'),
(19,19,15,15,19,'2026-02-19','Verified','Yes','Emergency response delay was confirmed','Escalate to emergency management'),
(20,20,16,18,20,'2026-02-20','Verified','Yes','Stray animal issue was confirmed','Send animal control team');


CREATE TABLE Comments (
    Comment_ID             INT PRIMARY KEY,
    Complaint_ID           INT NOT NULL,
    User_ID                INT NOT NULL,
    Parent_Comment_ID      INT NULL,
    Comment_Text           VARCHAR(500) NOT NULL,
    Comment_Date           DATETIME NOT NULL,
    Comment_Type           VARCHAR(30) NOT NULL,
    Comment_Status         VARCHAR(20) NOT NULL,
    Is_Internal            VARCHAR(5) NOT NULL,
    Edited_Date            DATETIME NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID),

    FOREIGN KEY (Parent_Comment_ID)
        REFERENCES Comments(Comment_ID)
)

INSERT INTO Comments VALUES
(1,1,1,NULL,'The water leakage is causing problems for nearby residents.','2026-02-01 09:30:00','Complaint','Active','No',NULL),
(2,2,2,NULL,'Water pressure is still low during the morning hours.','2026-02-02 10:15:00','Complaint','Active','No',NULL),
(3,3,3,NULL,'Electricity supply is not available in this area.','2026-02-03 08:45:00','Complaint','Active','No',NULL),
(4,4,4,NULL,'Voltage fluctuation is affecting electrical appliances.','2026-02-04 11:20:00','Complaint','Active','No',NULL),
(5,5,5,NULL,'The pothole is dangerous for two-wheelers.','2026-02-05 09:10:00','Complaint','Active','No',NULL),
(6,6,6,NULL,'Road damage has become worse after recent rain.','2026-02-06 14:00:00','Complaint','Active','No',NULL),
(7,7,7,NULL,'Garbage has not been collected for several days.','2026-02-07 10:30:00','Complaint','Active','No',NULL),
(8,8,8,NULL,'Waste dumping is creating an unpleasant smell in the area.','2026-02-08 12:15:00','Complaint','Active','No',NULL),
(9,9,9,NULL,'The public area needs immediate cleaning.','2026-02-09 09:45:00','Complaint','Active','No',NULL),
(10,10,10,NULL,'This safety issue may cause accidents if not fixed quickly.','2026-02-10 16:20:00','Complaint','Active','No',NULL),
(11,11,11,NULL,'The bus service is regularly delayed at this location.','2026-02-11 08:30:00','Complaint','Active','No',NULL),
(12,12,12,NULL,'The traffic signal is not working properly.','2026-02-12 13:10:00','Complaint','Active','No',NULL),
(13,13,13,NULL,'The street light remains switched off at night.','2026-02-13 19:30:00','Complaint','Active','No',NULL),
(14,14,14,NULL,'The public toilet requires cleaning and maintenance.','2026-02-14 10:00:00','Complaint','Active','No',NULL),
(15,15,15,NULL,'Internet service has been unavailable since morning.','2026-02-15 11:45:00','Complaint','Active','No',NULL),
(16,16,16,NULL,'The computer system is not responding properly.','2026-02-16 15:20:00','Complaint','Active','No',NULL),
(17,17,17,NULL,'The blocked drain is causing water to collect on the road.','2026-02-17 09:15:00','Complaint','Active','No',NULL),
(18,18,18,NULL,'There is a strong pollution problem near the reported location.','2026-02-18 12:40:00','Complaint','Active','No',NULL),
(19,19,19,NULL,'Emergency response was delayed and immediate attention is required.','2026-02-19 20:10:00','Complaint','Active','No',NULL),
(20,20,20,NULL,'Stray animals are creating problems for people in this area.','2026-02-20 17:00:00','Complaint','Active','No',NULL);



CREATE TABLE Feedback (
    Feedback_ID               INT PRIMARY KEY,
    Complaint_ID              INT NOT NULL UNIQUE,
    User_ID                   INT NOT NULL,
    Rating                    INT NOT NULL,
    Feedback_Text             VARCHAR(500) NULL,
    Submitted_Date            DATE NOT NULL,
    Resolution_Rating         INT NOT NULL,
    Staff_Rating              INT NOT NULL,
    Would_Recommend           VARCHAR(5) NOT NULL,
    Is_Anonymous              VARCHAR(5) NOT NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID)
)

INSERT INTO Feedback VALUES
(1,1,1,5,'The water leakage was repaired quickly.','2026-02-04',5,5,'Yes','No'),
(2,2,2,4,'The water pressure has improved after inspection.','2026-02-06',4,4,'Yes','No'),
(3,3,3,5,'Electricity service was restored successfully.','2026-02-05',5,5,'Yes','No'),
(4,4,4,4,'The voltage issue was handled properly.','2026-02-07',4,4,'Yes','No'),
(5,5,5,5,'The road complaint was handled well.','2026-02-10',5,5,'Yes','No'),
(6,6,6,4,'Road repair work was satisfactory.','2026-02-12',4,4,'Yes','No'),
(7,7,7,5,'Garbage was collected as requested.','2026-02-10',5,5,'Yes','No'),
(8,8,8,3,'The waste dumping issue needs more attention.','2026-02-12',3,3,'No','No'),
(9,9,9,4,'The hygiene problem was handled properly.','2026-02-14',4,4,'Yes','No'),
(10,10,10,5,'The safety issue was handled quickly.','2026-02-12',5,5,'Yes','No'),
(11,11,11,4,'The transport issue was investigated.','2026-02-15',4,4,'Yes','No'),
(12,12,12,5,'The traffic signal was repaired successfully.','2026-02-15',5,5,'Yes','No'),
(13,13,13,4,'Street light repair was completed.','2026-02-17',4,4,'Yes','No'),
(14,14,14,4,'The public toilet maintenance was satisfactory.','2026-02-18',4,4,'Yes','No'),
(15,15,15,5,'Internet connection was restored quickly.','2026-02-18',5,5,'Yes','No'),
(16,16,16,4,'The technical team solved the system problem.','2026-02-20',4,5,'Yes','No'),
(17,17,17,4,'The drainage cleaning work was useful.','2026-02-21',4,4,'Yes','No'),
(18,18,18,3,'The pollution issue requires additional monitoring.','2026-02-22',3,3,'No','No'),
(19,19,19,4,'The emergency complaint was escalated properly.','2026-02-21',4,4,'Yes','No'),
(20,20,20,5,'The stray animal issue was resolved successfully.','2026-02-23',5,5,'Yes','No');



CREATE TABLE Notifications (
    Notification_ID          INT PRIMARY KEY,
    User_ID                  INT NOT NULL,
    Complaint_ID             INT NULL,
    Notification_Type        VARCHAR(50) NOT NULL,
    Message                  VARCHAR(500) NOT NULL,
    Created_Date             DATETIME NOT NULL,
    Is_Read                  VARCHAR(5) NOT NULL,
    Read_Date                DATETIME NULL,
    Priority                 VARCHAR(20) NOT NULL,
    Channel                  VARCHAR(20) NOT NULL,

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID),

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID)
)

INSERT INTO Notifications VALUES
(1,1,1,'Status Update','Your water leakage complaint has been received.','2026-02-01 09:00:00','Yes','2026-02-01 10:00:00','High','Email'),
(2,2,2,'Verification','Your water pressure complaint is under verification.','2026-02-03 10:00:00','Yes','2026-02-03 11:00:00','Medium','Email'),
(3,3,3,'Assignment','Your electricity complaint has been assigned to staff.','2026-02-03 12:00:00','Yes','2026-02-03 13:00:00','High','SMS'),
(4,4,4,'Status Update','Your voltage complaint is being investigated.','2026-02-05 11:00:00','Yes','2026-02-05 12:00:00','Medium','Email'),
(5,5,5,'Verification','Your road pothole complaint has been verified.','2026-02-06 13:00:00','Yes','2026-02-06 14:00:00','High','SMS'),
(6,6,6,'Progress Update','Road repair work has started for your complaint.','2026-02-08 14:00:00','No',NULL,'High','Email'),
(7,7,7,'Resolution','Your garbage collection complaint has been resolved.','2026-02-09 11:00:00','Yes','2026-02-09 12:00:00','Medium','Email'),
(8,8,8,'Escalation','Your illegal dumping complaint has been escalated.','2026-02-09 15:00:00','No',NULL,'High','SMS'),
(9,9,9,'Verification','Your public hygiene complaint is under review.','2026-02-10 12:00:00','Yes','2026-02-10 13:00:00','Medium','Email'),
(10,10,10,'Safety Alert','Your safety complaint requires immediate action.','2026-02-10 16:30:00','No',NULL,'Critical','SMS'),
(11,11,11,'Status Update','Your transport complaint is being investigated.','2026-02-12 11:00:00','Yes','2026-02-12 12:00:00','Medium','Email'),
(12,12,12,'Resolution','Your traffic signal complaint has been resolved.','2026-02-14 13:00:00','Yes','2026-02-14 14:00:00','High','SMS'),
(13,13,13,'Progress Update','Street light repair work is in progress.','2026-02-14 19:30:00','No',NULL,'Medium','Email'),
(14,14,14,'Verification','Your public toilet complaint has been verified.','2026-02-15 10:00:00','Yes','2026-02-15 11:00:00','Medium','Email'),
(15,15,15,'Resolution','Your internet connection has been restored.','2026-02-17 16:00:00','Yes','2026-02-17 17:00:00','High','SMS'),
(16,16,16,'Progress Update','Technical staff are working on your computer issue.','2026-02-17 12:00:00','No',NULL,'Medium','Email'),
(17,17,17,'Progress Update','Drain cleaning work is currently in progress.','2026-02-18 14:00:00','No',NULL,'High','SMS'),
(18,18,18,'Verification','Your environmental complaint is under investigation.','2026-02-19 13:00:00','Yes','2026-02-19 14:00:00','Medium','Email'),
(19,19,19,'Escalation','Your emergency complaint has been escalated.','2026-02-19 22:00:00','No',NULL,'Critical','SMS'),
(20,20,NULL,'System Notice','Your complaint account information has been updated.','2026-02-20 17:30:00','Yes','2026-02-20 18:00:00','Low','Email');




CREATE TABLE Escalations (
    Escalation_ID          INT PRIMARY KEY,
    Complaint_ID           INT NOT NULL,
    User_ID                INT NOT NULL,
    Department_ID          INT NOT NULL,
    Escalation_Reason      VARCHAR(500) NOT NULL,
    Escalation_Date        DATE NOT NULL,
    Escalation_Level       INT NOT NULL,
    Resolution_Date        DATE NULL,
    Escalation_Status      VARCHAR(30) NOT NULL,
    Resolution_Remarks     VARCHAR(300) NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID),

    FOREIGN KEY (Department_ID)
        REFERENCES Departments(Department_ID)
)

INSERT INTO Escalations VALUES
(1,1,27,1,'Pipeline repair requires additional technical support','2026-02-02',1,'2026-02-03','Resolved','Pipeline repair was completed'),
(2,2,28,1,'Water pressure issue requires department inspection','2026-02-03',1,NULL,'In Progress','Inspection is currently underway'),
(3,3,29,2,'Power outage requires urgent electrical response','2026-02-03',2,'2026-02-04','Resolved','Electricity supply restored'),
(4,4,27,2,'Voltage fluctuation requires transformer inspection','2026-02-05',1,NULL,'In Progress','Transformer inspection pending'),
(5,5,28,3,'Road pothole requires immediate repair','2026-02-06',2,NULL,'Pending','Repair work scheduled'),
(6,6,29,3,'Road damage requires additional maintenance work','2026-02-08',1,NULL,'In Progress','Road repair is ongoing'),
(7,7,27,4,'Garbage collection was delayed','2026-02-08',1,'2026-02-09','Resolved','Waste collection completed'),
(8,8,28,4,'Illegal dumping requires enforcement action','2026-02-09',2,NULL,'Escalated','Case forwarded to enforcement team'),
(9,9,29,5,'Public hygiene issue requires inspection','2026-02-10',1,NULL,'In Progress','Inspection is underway'),
(10,10,27,6,'Safety hazard requires urgent attention','2026-02-10',3,NULL,'Escalated','Immediate action requested'),
(11,11,28,7,'Transport delay requires operator review','2026-02-12',1,NULL,'In Progress','Transport operator contacted'),
(12,12,29,8,'Traffic signal failure requires technical repair','2026-02-12',2,'2026-02-14','Resolved','Signal repaired successfully'),
(13,13,27,9,'Street light failure requires maintenance support','2026-02-14',1,NULL,'In Progress','Replacement work underway'),
(14,14,28,10,'Public toilet requires additional maintenance','2026-02-15',1,NULL,'Pending','Maintenance team assigned'),
(15,15,29,11,'Internet disconnection requires technical support','2026-02-16',2,'2026-02-17','Resolved','Internet connection restored'),
(16,16,27,12,'Computer system requires specialist support','2026-02-17',1,NULL,'In Progress','Technical inspection ongoing'),
(17,17,28,14,'Blocked drain requires urgent cleaning','2026-02-18',2,NULL,'In Progress','Drain cleaning is underway'),
(18,18,29,16,'Pollution complaint requires environmental investigation','2026-02-19',1,NULL,'Pending','Environmental inspection scheduled'),
(19,19,27,15,'Emergency response delay requires senior review','2026-02-19',3,NULL,'Escalated','Case forwarded to emergency management'),
(20,20,28,18,'Stray animal complaint requires animal control action','2026-02-20',1,'2026-02-22','Resolved','Animal control team handled the issue');



CREATE TABLE ComplaintHistory (
    History_ID            INT PRIMARY KEY,
    Complaint_ID          INT NOT NULL,
    User_ID               INT NOT NULL,
    Old_Status_ID         INT NULL,
    New_Status_ID         INT NOT NULL,
    Change_Reason         VARCHAR(300) NULL,
    Changed_Date          DATETIME NOT NULL,
    Remarks               VARCHAR(300) NULL,
    Action_Type           VARCHAR(30) NOT NULL,
    Reference_Table       VARCHAR(100) NULL,

    FOREIGN KEY (Complaint_ID)
        REFERENCES Complaints(Complaint_ID),

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID),

    FOREIGN KEY (Old_Status_ID)
        REFERENCES Statuses(Status_ID),

    FOREIGN KEY (New_Status_ID)
        REFERENCES Statuses(Status_ID)
)

INSERT INTO ComplaintHistory VALUES
(1,1,1,NULL,1,'Complaint submitted by user','2026-02-01 09:00:00','Initial complaint received','Created','Complaints'),
(2,2,2,1,3,'Complaint sent for review','2026-02-03 10:00:00','Verification started','Updated','ComplaintVerification'),
(3,3,3,1,5,'Complaint assigned to staff','2026-02-03 12:00:00','Electrical staff assigned','Assigned','Assignments'),
(4,4,4,3,9,'Investigation started','2026-02-05 11:00:00','Voltage inspection started','Updated','ComplaintUpdates'),
(5,5,5,1,4,'Issue verified by staff','2026-02-06 13:00:00','Pothole confirmed','Verified','ComplaintVerification'),
(6,6,6,5,9,'Repair work started','2026-02-08 14:00:00','Road repair is in progress','Updated','ComplaintUpdates'),
(7,7,7,5,16,'Waste collection completed','2026-02-09 11:00:00','Garbage removed','Resolved','ComplaintUpdates'),
(8,8,8,5,12,'Complaint requires escalation','2026-02-09 15:00:00','Forwarded for further action','Escalated','Escalations'),
(9,9,9,1,3,'Complaint is under review','2026-02-10 12:00:00','Inspection started','Updated','ComplaintVerification'),
(10,10,10,5,4,'Safety issue verified','2026-02-10 16:30:00','Hazard confirmed','Verified','ComplaintVerification'),
(11,11,11,1,3,'Transport issue requires investigation','2026-02-12 11:00:00','Route information checked','Updated','ComplaintUpdates'),
(12,12,12,9,16,'Traffic signal repair completed','2026-02-14 13:00:00','Signal restored','Resolved','ComplaintUpdates'),
(13,13,13,5,9,'Street light repair started','2026-02-14 19:30:00','Lighting unit inspected','Updated','ComplaintUpdates'),
(14,14,14,1,3,'Facility inspection started','2026-02-15 10:00:00','Maintenance issue confirmed','Verified','ComplaintVerification'),
(15,15,15,9,16,'Internet connection restored','2026-02-17 16:00:00','Network service restored','Resolved','ComplaintUpdates'),
(16,16,16,4,9,'Technical investigation started','2026-02-17 12:00:00','System inspection underway','Updated','ComplaintUpdates'),
(17,17,17,5,9,'Drain cleaning started','2026-02-18 14:00:00','Blocked waste is being removed','Updated','ComplaintUpdates'),
(18,18,18,1,3,'Environmental investigation started','2026-02-19 13:00:00','Pollution source being checked','Updated','ComplaintVerification'),
(19,19,19,5,12,'Emergency response delay escalated','2026-02-19 22:00:00','Senior management notified','Escalated','Escalations'),
(20,20,20,4,16,'Animal control action completed','2026-02-22 12:00:00','Stray animal issue resolved','Resolved','ComplaintUpdates');



CREATE TABLE AuditLogs (
    Audit_ID            INT PRIMARY KEY,
    User_ID             INT NOT NULL,
    Table_Name          VARCHAR(100) NOT NULL,
    Record_ID           INT NOT NULL,
    Action              VARCHAR(30) NOT NULL,
    Old_Value           VARCHAR(500) NULL,
    New_Value           VARCHAR(500) NULL,
    Action_Date         DATETIME NOT NULL,
    IP_Address          VARCHAR(45) NULL,
    Action_Description  VARCHAR(300) NULL,

    FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID)
)

INSERT INTO AuditLogs VALUES
(1,1,'Complaints',1,'INSERT',NULL,'Submitted','2026-02-01 09:00:00','192.168.1.101','New complaint record created'),
(2,2,'Complaints',2,'UPDATE','Submitted','Under Review','2026-02-03 10:00:00','192.168.1.102','Complaint status updated'),
(3,27,'Assignments',3,'INSERT',NULL,'Assigned','2026-02-03 12:00:00','192.168.1.127','Complaint assigned to staff'),
(4,4,'ComplaintVerification',4,'INSERT',NULL,'Verified','2026-02-05 11:00:00','192.168.1.104','Complaint verification recorded'),
(5,5,'Complaints',5,'UPDATE','Under Review','Verified','2026-02-06 13:00:00','192.168.1.105','Complaint verification completed'),
(6,29,'Assignments',6,'UPDATE','Assigned','In Progress','2026-02-08 14:00:00','192.168.1.129','Assignment work started'),
(7,7,'ComplaintUpdates',7,'INSERT',NULL,'Resolved','2026-02-09 11:00:00','192.168.1.107','Resolution update recorded'),
(8,28,'Escalations',8,'INSERT',NULL,'Escalated','2026-02-09 15:00:00','192.168.1.128','Complaint escalation created'),
(9,9,'ComplaintVerification',9,'INSERT',NULL,'Verified','2026-02-10 12:00:00','192.168.1.109','Complaint verification details added'),
(10,27,'Escalations',10,'INSERT',NULL,'Escalated','2026-02-10 16:30:00','192.168.1.127','Safety complaint escalated'),
(11,11,'ComplaintUpdates',11,'INSERT',NULL,'In Progress','2026-02-12 11:00:00','192.168.1.111','Transport investigation updated'),
(12,29,'ComplaintUpdates',12,'UPDATE','In Progress','Resolved','2026-02-14 13:00:00','192.168.1.129','Traffic signal repair completed'),
(13,13,'ComplaintUpdates',13,'INSERT',NULL,'In Progress','2026-02-14 19:30:00','192.168.1.113','Street light repair updated'),
(14,14,'ComplaintVerification',14,'INSERT',NULL,'Verified','2026-02-15 10:00:00','192.168.1.114','Facility verification recorded'),
(15,29,'ComplaintUpdates',15,'UPDATE','In Progress','Resolved','2026-02-17 16:00:00','192.168.1.129','Internet repair completed'),
(16,16,'ComplaintUpdates',16,'INSERT',NULL,'In Progress','2026-02-17 12:00:00','192.168.1.116','Technical investigation updated'),
(17,28,'ComplaintUpdates',17,'INSERT',NULL,'In Progress','2026-02-18 14:00:00','192.168.1.128','Drain cleaning update recorded'),
(18,18,'ComplaintVerification',18,'INSERT',NULL,'Verified','2026-02-19 13:00:00','192.168.1.118','Environmental verification recorded'),
(19,27,'Escalations',19,'INSERT',NULL,'Escalated','2026-02-19 22:00:00','192.168.1.127','Emergency complaint escalated'),
(20,20,'ComplaintUpdates',20,'UPDATE','In Progress','Resolved','2026-02-22 12:00:00','192.168.1.120','Animal control complaint resolved');