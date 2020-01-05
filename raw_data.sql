/***********************************************/


(select * from publication where year(date_)>year(curdate())-3);


alter table publication_ra
	add constraint fk4 foreign key (r_id)references  research(r_id) on delete cascade on update cascade;



/**********************************************/


insert into publication values( 'pub1001', 'conference publication1', 'details1', 'conference', '2017-03-15', 'fac1043' );
insert into publication values( 'pub1002', 'conference publication2', 'details2', 'conference', '2017-12-19', 'fac1049' );
insert into publication values( 'pub1003', 'conference publication3', 'details3', 'conference', '2017-12-16', 'fac1028' );
insert into publication values( 'pub1004', 'conference publication4', 'details4', 'conference', '2017-10-22', 'fac1022' );
insert into publication values( 'pub1005', 'conference publication5', 'details5', 'conference', '2017-08-16', 'fac1002' );
insert into publication values( 'pub1006', 'conference publication6', 'details6', 'conference', '2018-04-11', 'fac1023' );
insert into publication values( 'pub1007', 'conference publication7', 'details7', 'conference', '2018-09-05', 'fac1035' );
insert into publication values( 'pub1008', 'conference publication8', 'details8', 'conference', '2018-11-09', 'fac1004' );
insert into publication values( 'pub1009', 'conference publication9', 'details9', 'conference', '2018-02-11', 'fac1037' );
insert into publication values( 'pub1010', 'conference publication10', 'details10', 'conference', '2018-12-22', 'fac1045' );
insert into publication values( 'pub1011', 'conference publication11', 'details11', 'conference', '2019-08-04', 'fac1004' );
insert into publication values( 'pub1012', 'conference publication12', 'details12', 'conference', '2019-12-23', 'fac1026' );
insert into publication values( 'pub1013', 'conference publication13', 'details13', 'conference', '2019-02-23', 'fac1040' );
insert into publication values( 'pub1014', 'conference publication14', 'details14', 'conference', '2019-11-28', 'fac1039' );
insert into publication values( 'pub1015', 'conference publication15', 'details15', 'conference', '2019-04-28', 'fac1012' );
insert into publication values( 'pub1016', 'conference publication16', 'details16', 'journal', '2017-10-15', 'fac1010' );
insert into publication values( 'pub1017', 'conference publication17', 'details17', 'journal', '2017-12-16', 'fac1002' );
insert into publication values( 'pub1018', 'conference publication18', 'details18', 'journal', '2017-10-06', 'fac1028' );
insert into publication values( 'pub1019', 'conference publication19', 'details19', 'journal', '2017-09-07', 'fac1050' );
insert into publication values( 'pub1020', 'conference publication20', 'details20', 'journal', '2017-07-27', 'fac1028' );
insert into publication values( 'pub1021', 'conference publication21', 'details21', 'journal', '2018-11-14', 'fac1021' );
insert into publication values( 'pub1022', 'conference publication22', 'details22', 'journal', '2018-10-05', 'fac1040' );
insert into publication values( 'pub1023', 'conference publication23', 'details23', 'journal', '2018-12-07', 'fac1020' );
insert into publication values( 'pub1024', 'conference publication24', 'details24', 'journal', '2018-01-17', 'fac1009' );
insert into publication values( 'pub1025', 'conference publication25', 'details25', 'journal', '2018-07-05', 'fac1032' );
insert into publication values( 'pub1026', 'conference publication26', 'details26', 'journal', '2019-12-22', 'fac1015' );
insert into publication values( 'pub1027', 'conference publication27', 'details27', 'journal', '2019-11-25', 'fac1018' );
insert into publication values( 'pub1028', 'conference publication28', 'details28', 'journal', '2019-06-14', 'fac1045' );
insert into publication values( 'pub1029', 'conference publication29', 'details29', 'journal', '2019-05-06', 'fac1049' );
insert into publication values( 'pub1030', 'conference publication30', 'details30', 'journal', '2019-06-24', 'fac1025' );













insert into user values( 'fac1001', 'faculty_name1', 'pass1', 'faculty_name1@gmail.com', '+919934910214','professor', 'M', 'CS', '1975-09-14' );
insert into user values( 'fac1002', 'faculty_name2', 'pass2', 'faculty_name2@gmail.com', '+919934910821','professor', 'M', 'CS', '1975-01-06' );
insert into user values( 'fac1003', 'faculty_name3', 'pass3', 'faculty_name3@gmail.com', '+919934910078','professor', 'M', 'CS', '1975-02-18' );
insert into user values( 'fac1004', 'faculty_name4', 'pass4', 'faculty_name4@gmail.com', '+919934910816','professor', 'M', 'CS', '1975-10-14' );
insert into user values( 'fac1005', 'faculty_name5', 'pass5', 'faculty_name5@gmail.com', '+919934910901','professor', 'M', 'CS', '1975-10-05' );
insert into user values( 'fac1006', 'faculty_name6', 'pass6', 'faculty_name6@gmail.com', '+919934910157','professor', 'M', 'CS', '1975-08-08' );
insert into user values( 'fac1007', 'faculty_name7', 'pass7', 'faculty_name7@gmail.com', '+919934910752','professor', 'M', 'CS', '1975-01-03' );
insert into user values( 'fac1008', 'faculty_name8', 'pass8', 'faculty_name8@gmail.com', '+919934910420','professor', 'M', 'CS', '1975-06-12' );
insert into user values( 'fac1009', 'faculty_name9', 'pass9', 'faculty_name9@gmail.com', '+919934910374','professor', 'M', 'CS', '1975-12-15' );
insert into user values( 'fac1010', 'faculty_name10', 'pass10', 'faculty_name10@gmail.com', '+919934910117','professor', 'M', 'CS', '1975-04-19' );
insert into user values( 'fac1011', 'faculty_name11', 'pass11', 'faculty_name11@gmail.com', '+919934910791','professor', 'M', 'CS', '1975-09-15' );
insert into user values( 'fac1012', 'faculty_name12', 'pass12', 'faculty_name12@gmail.com', '+919934910514','professor', 'M', 'CS', '1975-09-27' );
insert into user values( 'fac1013', 'faculty_name13', 'pass13', 'faculty_name13@gmail.com', '+919934910710','professor', 'M', 'CS', '1975-05-14' );
insert into user values( 'fac1014', 'faculty_name14', 'pass14', 'faculty_name14@gmail.com', '+919934910846','professor', 'M', 'CS', '1975-03-02' );
insert into user values( 'fac1015', 'faculty_name15', 'pass15', 'faculty_name15@gmail.com', '+919934910530','professor', 'M', 'CS', '1975-06-27' );
insert into user values( 'fac1016', 'faculty_name16', 'pass16', 'faculty_name16@gmail.com', '+919934910639','professor', 'M', 'CS', '1975-03-13' );
insert into user values( 'fac1017', 'faculty_name17', 'pass17', 'faculty_name17@gmail.com', '+919934910933','professor', 'M', 'CS', '1975-07-14' );
insert into user values( 'fac1018', 'faculty_name18', 'pass18', 'faculty_name18@gmail.com', '+919934910097','professor', 'M', 'CS', '1975-03-16' );
insert into user values( 'fac1019', 'faculty_name19', 'pass19', 'faculty_name19@gmail.com', '+919934910335','professor', 'M', 'CS', '1975-04-12' );
insert into user values( 'fac1020', 'faculty_name20', 'pass20', 'faculty_name20@gmail.com', '+919934910031','professor', 'M', 'CS', '1975-11-24' );
insert into user values( 'fac1021', 'faculty_name21', 'pass21', 'faculty_name21@gmail.com', '+919934910236','professor', 'M', 'CS', '1975-11-04' );
insert into user values( 'fac1022', 'faculty_name22', 'pass22', 'faculty_name22@gmail.com', '+919934910410','professor', 'M', 'CS', '1975-12-02' );
insert into user values( 'fac1023', 'faculty_name23', 'pass23', 'faculty_name23@gmail.com', '+919934910250','professor', 'M', 'CS', '1975-11-28' );
insert into user values( 'fac1024', 'faculty_name24', 'pass24', 'faculty_name24@gmail.com', '+919934910589','professor', 'M', 'CS', '1975-05-21' );
insert into user values( 'fac1025', 'faculty_name25', 'pass25', 'faculty_name25@gmail.com', '+919934910261','professor', 'M', 'CS', '1975-12-12' );
insert into user values( 'fac1026', 'faculty_name26', 'pass26', 'faculty_name26@gmail.com', '+919934910707','professor', 'M', 'CS', '1975-07-13' );
insert into user values( 'fac1027', 'faculty_name27', 'pass27', 'faculty_name27@gmail.com', '+919934910034','professor', 'M', 'CS', '1975-12-02' );
insert into user values( 'fac1028', 'faculty_name28', 'pass28', 'faculty_name28@gmail.com', '+919934910138','professor', 'M', 'CS', '1975-10-04' );
insert into user values( 'fac1029', 'faculty_name29', 'pass29', 'faculty_name29@gmail.com', '+919934910576','professor', 'M', 'CS', '1975-08-08' );
insert into user values( 'fac1030', 'faculty_name30', 'pass30', 'faculty_name30@gmail.com', '+919934910315','professor', 'M', 'CS', '1975-07-20' );
insert into user values( 'fac1031', 'faculty_name31', 'pass31', 'faculty_name31@gmail.com', '+919934910171','professor', 'M', 'CS', '1975-06-17' );
insert into user values( 'fac1032', 'faculty_name32', 'pass32', 'faculty_name32@gmail.com', '+919934910528','professor', 'M', 'CS', '1975-05-03' );
insert into user values( 'fac1033', 'faculty_name33', 'pass33', 'faculty_name33@gmail.com', '+919934910943','professor', 'M', 'CS', '1975-10-04' );
insert into user values( 'fac1034', 'faculty_name34', 'pass34', 'faculty_name34@gmail.com', '+919934910161','professor', 'M', 'CS', '1975-12-16' );
insert into user values( 'fac1035', 'faculty_name35', 'pass35', 'faculty_name35@gmail.com', '+919934910078','professor', 'M', 'CS', '1975-11-09' );
insert into user values( 'fac1036', 'faculty_name36', 'pass36', 'faculty_name36@gmail.com', '+919934910613','professor', 'M', 'CS', '1975-10-05' );
insert into user values( 'fac1037', 'faculty_name37', 'pass37', 'faculty_name37@gmail.com', '+919934910953','professor', 'M', 'CS', '1975-03-25' );
insert into user values( 'fac1038', 'faculty_name38', 'pass38', 'faculty_name38@gmail.com', '+919934910192','professor', 'M', 'CS', '1975-05-06' );
insert into user values( 'fac1039', 'faculty_name39', 'pass39', 'faculty_name39@gmail.com', '+919934910498','professor', 'M', 'CS', '1975-01-05' );
insert into user values( 'fac1040', 'faculty_name40', 'pass40', 'faculty_name40@gmail.com', '+919934910530','professor', 'M', 'CS', '1975-01-27' );
insert into user values( 'fac1041', 'faculty_name41', 'pass41', 'faculty_name41@gmail.com', '+919934910161','professor', 'M', 'CS', '1975-06-21' );
insert into user values( 'fac1042', 'faculty_name42', 'pass42', 'faculty_name42@gmail.com', '+919934910678','professor', 'M', 'CS', '1975-08-12' );
insert into user values( 'fac1043', 'faculty_name43', 'pass43', 'faculty_name43@gmail.com', '+919934910406','professor', 'M', 'CS', '1975-04-10' );
insert into user values( 'fac1044', 'faculty_name44', 'pass44', 'faculty_name44@gmail.com', '+919934910624','professor', 'M', 'CS', '1975-11-13' );
insert into user values( 'fac1045', 'faculty_name45', 'pass45', 'faculty_name45@gmail.com', '+919934910063','professor', 'M', 'CS', '1975-07-21' );
insert into user values( 'fac1046', 'faculty_name46', 'pass46', 'faculty_name46@gmail.com', '+919934910751','professor', 'M', 'CS', '1975-06-05' );
insert into user values( 'fac1047', 'faculty_name47', 'pass47', 'faculty_name47@gmail.com', '+919934910628','professor', 'M', 'CS', '1975-02-05' );
insert into user values( 'fac1048', 'faculty_name48', 'pass48', 'faculty_name48@gmail.com', '+919934910553','professor', 'M', 'CS', '1975-10-02' );
insert into user values( 'fac1049', 'faculty_name49', 'pass49', 'faculty_name49@gmail.com', '+919934910499','professor', 'M', 'CS', '1975-07-19' );
insert into user values( 'fac1050', 'faculty_name50', 'pass50', 'faculty_name50@gmail.com', '+919934910484','professor', 'M', 'CS', '1975-12-03' );










insert into made_pub values( 'pub1001', 'fac1006' );
insert into made_pub values( 'pub1001', 'fac1042' );
insert into made_pub values( 'pub1001', 'fac1028' );
insert into made_pub values( 'pub1002', 'fac1028' );
insert into made_pub values( 'pub1002', 'fac1050' );
insert into made_pub values( 'pub1002', 'fac1029' );
insert into made_pub values( 'pub1003', 'fac1021' );
insert into made_pub values( 'pub1003', 'fac1007' );
insert into made_pub values( 'pub1003', 'fac1028' );
insert into made_pub values( 'pub1004', 'fac1040' );
insert into made_pub values( 'pub1004', 'fac1048' );
insert into made_pub values( 'pub1004', 'fac1033' );
insert into made_pub values( 'pub1005', 'fac1014' );
insert into made_pub values( 'pub1005', 'fac1007' );
insert into made_pub values( 'pub1005', 'fac1002' );
insert into made_pub values( 'pub1006', 'fac1026' );
insert into made_pub values( 'pub1006', 'fac1002' );
insert into made_pub values( 'pub1006', 'fac1025' );
insert into made_pub values( 'pub1007', 'fac1042' );
insert into made_pub values( 'pub1007', 'fac1046' );
insert into made_pub values( 'pub1007', 'fac1016' );
insert into made_pub values( 'pub1008', 'fac1010' );
insert into made_pub values( 'pub1008', 'fac1026' );
insert into made_pub values( 'pub1008', 'fac1032' );
insert into made_pub values( 'pub1009', 'fac1043' );
insert into made_pub values( 'pub1009', 'fac1049' );
insert into made_pub values( 'pub1009', 'fac1036' );
insert into made_pub values( 'pub1010', 'fac1027' );
insert into made_pub values( 'pub1010', 'fac1043' );
insert into made_pub values( 'pub1010', 'fac1012' );
insert into made_pub values( 'pub1011', 'fac1024' );
insert into made_pub values( 'pub1011', 'fac1050' );
insert into made_pub values( 'pub1011', 'fac1005' );
insert into made_pub values( 'pub1012', 'fac1003' );
insert into made_pub values( 'pub1012', 'fac1030' );
insert into made_pub values( 'pub1012', 'fac1006' );
insert into made_pub values( 'pub1013', 'fac1033' );
insert into made_pub values( 'pub1013', 'fac1050' );
insert into made_pub values( 'pub1013', 'fac1013' );
insert into made_pub values( 'pub1014', 'fac1011' );
insert into made_pub values( 'pub1014', 'fac1039' );
insert into made_pub values( 'pub1014', 'fac1010' );
insert into made_pub values( 'pub1015', 'fac1043' );
insert into made_pub values( 'pub1015', 'fac1005' );
insert into made_pub values( 'pub1015', 'fac1019' );
insert into made_pub values( 'pub1016', 'fac1046' );
insert into made_pub values( 'pub1016', 'fac1032' );
insert into made_pub values( 'pub1016', 'fac1020' );
insert into made_pub values( 'pub1017', 'fac1023' );
insert into made_pub values( 'pub1017', 'fac1017' );
insert into made_pub values( 'pub1017', 'fac1040' );
insert into made_pub values( 'pub1018', 'fac1035' );
insert into made_pub values( 'pub1018', 'fac1043' );
insert into made_pub values( 'pub1018', 'fac1021' );
insert into made_pub values( 'pub1019', 'fac1027' );
insert into made_pub values( 'pub1019', 'fac1043' );
insert into made_pub values( 'pub1019', 'fac1008' );
insert into made_pub values( 'pub1020', 'fac1006' );
insert into made_pub values( 'pub1020', 'fac1037' );
insert into made_pub values( 'pub1020', 'fac1019' );
insert into made_pub values( 'pub1021', 'fac1029' );
insert into made_pub values( 'pub1021', 'fac1036' );
insert into made_pub values( 'pub1021', 'fac1024' );
insert into made_pub values( 'pub1022', 'fac1033' );
insert into made_pub values( 'pub1022', 'fac1015' );
insert into made_pub values( 'pub1022', 'fac1031' );
insert into made_pub values( 'pub1023', 'fac1015' );
insert into made_pub values( 'pub1023', 'fac1017' );
insert into made_pub values( 'pub1023', 'fac1043' );
insert into made_pub values( 'pub1024', 'fac1025' );
insert into made_pub values( 'pub1024', 'fac1005' );
insert into made_pub values( 'pub1024', 'fac1005' );
insert into made_pub values( 'pub1025', 'fac1019' );
insert into made_pub values( 'pub1025', 'fac1011' );
insert into made_pub values( 'pub1025', 'fac1023' );
insert into made_pub values( 'pub1026', 'fac1017' );
insert into made_pub values( 'pub1026', 'fac1042' );
insert into made_pub values( 'pub1026', 'fac1044' );
insert into made_pub values( 'pub1027', 'fac1039' );
insert into made_pub values( 'pub1027', 'fac1015' );
insert into made_pub values( 'pub1027', 'fac1010' );
insert into made_pub values( 'pub1028', 'fac1030' );
insert into made_pub values( 'pub1028', 'fac1001' );
insert into made_pub values( 'pub1028', 'fac1004' );
insert into made_pub values( 'pub1029', 'fac1003' );
insert into made_pub values( 'pub1029', 'fac1029' );
insert into made_pub values( 'pub1029', 'fac1046' );
insert into made_pub values( 'pub1030', 'fac1010' );
insert into made_pub values( 'pub1030', 'fac1034' );
insert into made_pub values( 'pub1030', 'fac1032' );
insert into made_pub values( 'pub1031', 'fac1031' );
insert into made_pub values( 'pub1031', 'fac1014' );
insert into made_pub values( 'pub1031', 'fac1020' );
insert into made_pub values( 'pub1032', 'fac1006' );
insert into made_pub values( 'pub1032', 'fac1046' );
insert into made_pub values( 'pub1032', 'fac1036' );
insert into made_pub values( 'pub1033', 'fac1036' );
insert into made_pub values( 'pub1033', 'fac1011' );
insert into made_pub values( 'pub1033', 'fac1002' );
insert into made_pub values( 'pub1034', 'fac1029' );
insert into made_pub values( 'pub1034', 'fac1035' );
insert into made_pub values( 'pub1034', 'fac1009' );
insert into made_pub values( 'pub1035', 'fac1033' );
insert into made_pub values( 'pub1035', 'fac1006' );
insert into made_pub values( 'pub1035', 'fac1019' );
insert into made_pub values( 'pub1036', 'fac1005' );
insert into made_pub values( 'pub1036', 'fac1022' );
insert into made_pub values( 'pub1036', 'fac1011' );
insert into made_pub values( 'pub1037', 'fac1050' );
insert into made_pub values( 'pub1037', 'fac1012' );
insert into made_pub values( 'pub1037', 'fac1027' );
insert into made_pub values( 'pub1038', 'fac1009' );
insert into made_pub values( 'pub1038', 'fac1041' );
insert into made_pub values( 'pub1038', 'fac1027' );
insert into made_pub values( 'pub1039', 'fac1015' );
insert into made_pub values( 'pub1039', 'fac1043' );
insert into made_pub values( 'pub1039', 'fac1005' );
insert into made_pub values( 'pub1040', 'fac1010' );
insert into made_pub values( 'pub1040', 'fac1003' );
insert into made_pub values( 'pub1040', 'fac1041' );
insert into made_pub values( 'pub1041', 'fac1044' );
insert into made_pub values( 'pub1041', 'fac1033' );
insert into made_pub values( 'pub1041', 'fac1004' );
insert into made_pub values( 'pub1042', 'fac1013' );
insert into made_pub values( 'pub1042', 'fac1038' );
insert into made_pub values( 'pub1042', 'fac1050' );
insert into made_pub values( 'pub1043', 'fac1048' );
insert into made_pub values( 'pub1043', 'fac1023' );
insert into made_pub values( 'pub1043', 'fac1010' );
insert into made_pub values( 'pub1044', 'fac1050' );
insert into made_pub values( 'pub1044', 'fac1003' );
insert into made_pub values( 'pub1044', 'fac1046' );
insert into made_pub values( 'pub1045', 'fac1008' );
insert into made_pub values( 'pub1045', 'fac1035' );
insert into made_pub values( 'pub1045', 'fac1001' );
insert into made_pub values( 'pub1046', 'fac1028' );
insert into made_pub values( 'pub1046', 'fac1041' );
insert into made_pub values( 'pub1046', 'fac1022' );
insert into made_pub values( 'pub1047', 'fac1038' );
insert into made_pub values( 'pub1047', 'fac1042' );
insert into made_pub values( 'pub1047', 'fac1033' );
insert into made_pub values( 'pub1048', 'fac1016' );
insert into made_pub values( 'pub1048', 'fac1001' );
insert into made_pub values( 'pub1048', 'fac1024' );
insert into made_pub values( 'pub1049', 'fac1044' );
insert into made_pub values( 'pub1049', 'fac1017' );
insert into made_pub values( 'pub1049', 'fac1018' );
insert into made_pub values( 'pub1050', 'fac1001' );
insert into made_pub values( 'pub1050', 'fac1026' );
insert into made_pub values( 'pub1050', 'fac1020' );




















insert into research values( 'res1001', 'res_name1001' );
insert into research values( 'res1002', 'res_name1002' );
insert into research values( 'res1003', 'res_name1003' );
insert into research values( 'res1004', 'res_name1004' );
insert into research values( 'res1005', 'res_name1005' );
insert into research values( 'res1006', 'res_name1006' );
insert into research values( 'res1007', 'res_name1007' );
insert into research values( 'res1008', 'res_name1008' );
insert into research values( 'res1009', 'res_name1009' );
insert into research values( 'res1010', 'res_name1010' );
insert into research values( 'res1011', 'res_name1011' );
insert into research values( 'res1012', 'res_name1012' );
insert into research values( 'res1013', 'res_name1013' );
insert into research values( 'res1014', 'res_name1014' );
insert into research values( 'res1015', 'res_name1015' );
insert into research values( 'res1016', 'res_name1016' );
insert into research values( 'res1017', 'res_name1017' );
insert into research values( 'res1018', 'res_name1018' );
insert into research values( 'res1019', 'res_name1019' );
insert into research values( 'res1020', 'res_name1020' );



















insert into publication_ra values( 'pub1001', 'res1002' );
insert into publication_ra values( 'pub1001', 'res1015' );
insert into publication_ra values( 'pub1001', 'res1019' );
insert into publication_ra values( 'pub1002', 'res1005' );
insert into publication_ra values( 'pub1002', 'res1017' );
insert into publication_ra values( 'pub1002', 'res1006' );
insert into publication_ra values( 'pub1003', 'res1003' );
insert into publication_ra values( 'pub1003', 'res1015' );
insert into publication_ra values( 'pub1003', 'res1010' );
insert into publication_ra values( 'pub1004', 'res1009' );
insert into publication_ra values( 'pub1004', 'res1004' );
insert into publication_ra values( 'pub1004', 'res1015' );
insert into publication_ra values( 'pub1005', 'res1007' );
insert into publication_ra values( 'pub1005', 'res1004' );
insert into publication_ra values( 'pub1005', 'res1010' );
insert into publication_ra values( 'pub1006', 'res1008' );
insert into publication_ra values( 'pub1006', 'res1015' );
insert into publication_ra values( 'pub1006', 'res1013' );
insert into publication_ra values( 'pub1007', 'res1006' );
insert into publication_ra values( 'pub1007', 'res1010' );
insert into publication_ra values( 'pub1007', 'res1009' );
insert into publication_ra values( 'pub1008', 'res1004' );
insert into publication_ra values( 'pub1008', 'res1014' );
insert into publication_ra values( 'pub1008', 'res1019' );
insert into publication_ra values( 'pub1009', 'res1008' );
insert into publication_ra values( 'pub1009', 'res1004' );
insert into publication_ra values( 'pub1009', 'res1015' );
insert into publication_ra values( 'pub1010', 'res1002' );
insert into publication_ra values( 'pub1010', 'res1006' );
insert into publication_ra values( 'pub1010', 'res1001' );
insert into publication_ra values( 'pub1011', 'res1020' );
insert into publication_ra values( 'pub1011', 'res1010' );
insert into publication_ra values( 'pub1011', 'res1009' );
insert into publication_ra values( 'pub1012', 'res1017' );
insert into publication_ra values( 'pub1012', 'res1012' );
insert into publication_ra values( 'pub1012', 'res1014' );
insert into publication_ra values( 'pub1013', 'res1020' );
insert into publication_ra values( 'pub1013', 'res1015' );
insert into publication_ra values( 'pub1013', 'res1018' );
insert into publication_ra values( 'pub1014', 'res1011' );
insert into publication_ra values( 'pub1014', 'res1001' );
insert into publication_ra values( 'pub1014', 'res1006' );
insert into publication_ra values( 'pub1015', 'res1005' );
insert into publication_ra values( 'pub1015', 'res1014' );
insert into publication_ra values( 'pub1015', 'res1003' );
insert into publication_ra values( 'pub1016', 'res1006' );
insert into publication_ra values( 'pub1016', 'res1002' );
insert into publication_ra values( 'pub1016', 'res1020' );
insert into publication_ra values( 'pub1017', 'res1017' );
insert into publication_ra values( 'pub1017', 'res1002' );
insert into publication_ra values( 'pub1017', 'res1018' );
insert into publication_ra values( 'pub1018', 'res1016' );
insert into publication_ra values( 'pub1018', 'res1005' );
insert into publication_ra values( 'pub1018', 'res1004' );
insert into publication_ra values( 'pub1019', 'res1018' );
insert into publication_ra values( 'pub1019', 'res1002' );
insert into publication_ra values( 'pub1019', 'res1016' );
insert into publication_ra values( 'pub1020', 'res1009' );
insert into publication_ra values( 'pub1020', 'res1003' );
insert into publication_ra values( 'pub1020', 'res1005' );
insert into publication_ra values( 'pub1021', 'res1006' );
insert into publication_ra values( 'pub1021', 'res1007' );
insert into publication_ra values( 'pub1021', 'res1016' );
insert into publication_ra values( 'pub1022', 'res1009' );
insert into publication_ra values( 'pub1022', 'res1020' );
insert into publication_ra values( 'pub1022', 'res1007' );
insert into publication_ra values( 'pub1023', 'res1015' );
insert into publication_ra values( 'pub1023', 'res1019' );
insert into publication_ra values( 'pub1023', 'res1017' );
insert into publication_ra values( 'pub1024', 'res1005' );
insert into publication_ra values( 'pub1024', 'res1020' );
insert into publication_ra values( 'pub1024', 'res1014' );
insert into publication_ra values( 'pub1025', 'res1001' );
insert into publication_ra values( 'pub1025', 'res1013' );
insert into publication_ra values( 'pub1025', 'res1016' );
insert into publication_ra values( 'pub1026', 'res1007' );
insert into publication_ra values( 'pub1026', 'res1006' );
insert into publication_ra values( 'pub1026', 'res1014' );
insert into publication_ra values( 'pub1027', 'res1006' );
insert into publication_ra values( 'pub1027', 'res1015' );
insert into publication_ra values( 'pub1027', 'res1007' );
insert into publication_ra values( 'pub1028', 'res1003' );
insert into publication_ra values( 'pub1028', 'res1010' );
insert into publication_ra values( 'pub1028', 'res1018' );
insert into publication_ra values( 'pub1029', 'res1019' );
insert into publication_ra values( 'pub1029', 'res1005' );
insert into publication_ra values( 'pub1029', 'res1013' );
insert into publication_ra values( 'pub1030', 'res1008' );
insert into publication_ra values( 'pub1030', 'res1007' );
insert into publication_ra values( 'pub1030', 'res1017' );














insert into projects values( 'pro1001', 'pro_name1', 'detail1', 281108,'1975-11-24', 'fac1010' );
insert into projects values( 'pro1002', 'pro_name2', 'detail2', 516525,'1975-11-06', 'fac1005' );
insert into projects values( 'pro1003', 'pro_name3', 'detail3', 545402,'1975-09-04', 'fac1044' );
insert into projects values( 'pro1004', 'pro_name4', 'detail4', 754443,'1975-02-03', 'fac1042' );
insert into projects values( 'pro1005', 'pro_name5', 'detail5', 924524,'1975-10-05', 'fac1006' );
insert into projects values( 'pro1006', 'pro_name6', 'detail6', 19567,'1975-07-03', 'fac1038' );
insert into projects values( 'pro1007', 'pro_name7', 'detail7', 91767,'1975-01-12', 'fac1048' );
insert into projects values( 'pro1008', 'pro_name8', 'detail8', 457979,'1975-05-09', 'fac1029' );
insert into projects values( 'pro1009', 'pro_name9', 'detail9', 477625,'1975-07-14', 'fac1024' );
insert into projects values( 'pro1010', 'pro_name10', 'detail10', 223844,'1975-01-26', 'fac1047' );
insert into projects values( 'pro1011', 'pro_name11', 'detail11', 309661,'1975-12-03', 'fac1042' );
insert into projects values( 'pro1012', 'pro_name12', 'detail12', 128130,'1975-06-11', 'fac1019' );
insert into projects values( 'pro1013', 'pro_name13', 'detail13', 44879,'1975-04-13', 'fac1043' );
insert into projects values( 'pro1014', 'pro_name14', 'detail14', 43454,'1975-06-24', 'fac1035' );
insert into projects values( 'pro1015', 'pro_name15', 'detail15', 550536,'1975-12-17', 'fac1024' );
insert into projects values( 'pro1016', 'pro_name16', 'detail16', 636908,'1975-02-02', 'fac1044' );
insert into projects values( 'pro1017', 'pro_name17', 'detail17', 516266,'1975-11-04', 'fac1004' );
insert into projects values( 'pro1018', 'pro_name18', 'detail18', 648919,'1975-04-10', 'fac1032' );
insert into projects values( 'pro1019', 'pro_name19', 'detail19', 303561,'1975-01-27', 'fac1011' );
insert into projects values( 'pro1020', 'pro_name20', 'detail20', 702425,'1975-05-24', 'fac1033' );

















insert into agency values( 'age1001', 'age_name1' );
insert into agency values( 'age1002', 'age_name2' );
insert into agency values( 'age1003', 'age_name3' );
insert into agency values( 'age1004', 'age_name4' );
insert into agency values( 'age1005', 'age_name5' );
insert into agency values( 'age1006', 'age_name6' );
insert into agency values( 'age1007', 'age_name7' );
insert into agency values( 'age1008', 'age_name8' );
insert into agency values( 'age1009', 'age_name9' );
insert into agency values( 'age1010', 'age_name10' );
insert into agency values( 'age1011', 'age_name11' );
insert into agency values( 'age1012', 'age_name12' );
insert into agency values( 'age1013', 'age_name13' );
insert into agency values( 'age1014', 'age_name14' );
insert into agency values( 'age1015', 'age_name15' );
insert into agency values( 'age1016', 'age_name16' );
insert into agency values( 'age1017', 'age_name17' );
insert into agency values( 'age1018', 'age_name18' );
insert into agency values( 'age1019', 'age_name19' );
insert into agency values( 'age1020', 'age_name20' );






insert into made_pro values( 'pro1001', 'fac1030' );
insert into made_pro values( 'pro1001', 'fac1033' );
insert into made_pro values( 'pro1001', 'fac1046' );
insert into made_pro values( 'pro1002', 'fac1019' );
insert into made_pro values( 'pro1002', 'fac1012' );
insert into made_pro values( 'pro1002', 'fac1004' );
insert into made_pro values( 'pro1003', 'fac1024' );
insert into made_pro values( 'pro1003', 'fac1025' );
insert into made_pro values( 'pro1003', 'fac1013' );
insert into made_pro values( 'pro1004', 'fac1041' );
insert into made_pro values( 'pro1004', 'fac1010' );
insert into made_pro values( 'pro1004', 'fac1017' );
insert into made_pro values( 'pro1005', 'fac1016' );
insert into made_pro values( 'pro1005', 'fac1040' );
insert into made_pro values( 'pro1005', 'fac1013' );
insert into made_pro values( 'pro1006', 'fac1043' );
insert into made_pro values( 'pro1006', 'fac1035' );
insert into made_pro values( 'pro1006', 'fac1019' );
insert into made_pro values( 'pro1007', 'fac1014' );
insert into made_pro values( 'pro1007', 'fac1041' );
insert into made_pro values( 'pro1007', 'fac1026' );
insert into made_pro values( 'pro1008', 'fac1050' );
insert into made_pro values( 'pro1008', 'fac1049' );
insert into made_pro values( 'pro1008', 'fac1011' );
insert into made_pro values( 'pro1009', 'fac1034' );
insert into made_pro values( 'pro1009', 'fac1006' );
insert into made_pro values( 'pro1009', 'fac1048' );
insert into made_pro values( 'pro1010', 'fac1039' );
insert into made_pro values( 'pro1010', 'fac1022' );
insert into made_pro values( 'pro1010', 'fac1003' );
insert into made_pro values( 'pro1011', 'fac1048' );
insert into made_pro values( 'pro1011', 'fac1001' );
insert into made_pro values( 'pro1011', 'fac1037' );
insert into made_pro values( 'pro1012', 'fac1043' );
insert into made_pro values( 'pro1012', 'fac1021' );
insert into made_pro values( 'pro1012', 'fac1050' );
insert into made_pro values( 'pro1013', 'fac1046' );
insert into made_pro values( 'pro1013', 'fac1044' );
insert into made_pro values( 'pro1013', 'fac1026' );
insert into made_pro values( 'pro1014', 'fac1011' );
insert into made_pro values( 'pro1014', 'fac1037' );
insert into made_pro values( 'pro1014', 'fac1038' );
insert into made_pro values( 'pro1015', 'fac1027' );
insert into made_pro values( 'pro1015', 'fac1002' );
insert into made_pro values( 'pro1015', 'fac1041' );
insert into made_pro values( 'pro1016', 'fac1044' );
insert into made_pro values( 'pro1016', 'fac1013' );
insert into made_pro values( 'pro1016', 'fac1010' );
insert into made_pro values( 'pro1017', 'fac1007' );
insert into made_pro values( 'pro1017', 'fac1003' );
insert into made_pro values( 'pro1017', 'fac1037' );
insert into made_pro values( 'pro1018', 'fac1008' );
insert into made_pro values( 'pro1018', 'fac1003' );
insert into made_pro values( 'pro1018', 'fac1047' );
insert into made_pro values( 'pro1019', 'fac1044' );
insert into made_pro values( 'pro1019', 'fac1008' );
insert into made_pro values( 'pro1019', 'fac1032' );
insert into made_pro values( 'pro1020', 'fac1032' );
insert into made_pro values( 'pro1020', 'fac1048' );
insert into made_pro values( 'pro1020', 'fac1030' );






insert into project_ra values( 'pro1001', 'res1004' );
insert into project_ra values( 'pro1001', 'res1015' );
insert into project_ra values( 'pro1001', 'res1018' );
insert into project_ra values( 'pro1002', 'res1020' );
insert into project_ra values( 'pro1002', 'res1014' );
insert into project_ra values( 'pro1002', 'res1010' );
insert into project_ra values( 'pro1003', 'res1004' );
insert into project_ra values( 'pro1003', 'res1011' );
insert into project_ra values( 'pro1003', 'res1015' );
insert into project_ra values( 'pro1004', 'res1013' );
insert into project_ra values( 'pro1004', 'res1017' );
insert into project_ra values( 'pro1004', 'res1004' );
insert into project_ra values( 'pro1005', 'res1019' );
insert into project_ra values( 'pro1005', 'res1009' );
insert into project_ra values( 'pro1005', 'res1001' );
insert into project_ra values( 'pro1006', 'res1020' );
insert into project_ra values( 'pro1006', 'res1007' );
insert into project_ra values( 'pro1006', 'res1016' );
insert into project_ra values( 'pro1007', 'res1013' );
insert into project_ra values( 'pro1007', 'res1019' );
insert into project_ra values( 'pro1007', 'res1009' );
insert into project_ra values( 'pro1008', 'res1009' );
insert into project_ra values( 'pro1008', 'res1018' );
insert into project_ra values( 'pro1008', 'res1002' );
insert into project_ra values( 'pro1009', 'res1017' );
insert into project_ra values( 'pro1009', 'res1013' );
insert into project_ra values( 'pro1009', 'res1007' );
insert into project_ra values( 'pro1010', 'res1020' );
insert into project_ra values( 'pro1010', 'res1015' );
insert into project_ra values( 'pro1010', 'res1018' );
insert into project_ra values( 'pro1011', 'res1011' );
insert into project_ra values( 'pro1011', 'res1018' );
insert into project_ra values( 'pro1011', 'res1013' );
insert into project_ra values( 'pro1012', 'res1001' );
insert into project_ra values( 'pro1012', 'res1009' );
insert into project_ra values( 'pro1012', 'res1018' );
insert into project_ra values( 'pro1013', 'res1010' );
insert into project_ra values( 'pro1013', 'res1005' );
insert into project_ra values( 'pro1013', 'res1009' );
insert into project_ra values( 'pro1014', 'res1005' );
insert into project_ra values( 'pro1014', 'res1017' );
insert into project_ra values( 'pro1014', 'res1020' );
insert into project_ra values( 'pro1015', 'res1015' );
insert into project_ra values( 'pro1015', 'res1006' );
insert into project_ra values( 'pro1015', 'res1012' );
insert into project_ra values( 'pro1016', 'res1006' );
insert into project_ra values( 'pro1016', 'res1012' );
insert into project_ra values( 'pro1016', 'res1008' );
insert into project_ra values( 'pro1017', 'res1010' );
insert into project_ra values( 'pro1017', 'res1002' );
insert into project_ra values( 'pro1017', 'res1008' );
insert into project_ra values( 'pro1018', 'res1018' );
insert into project_ra values( 'pro1018', 'res1020' );
insert into project_ra values( 'pro1018', 'res1009' );
insert into project_ra values( 'pro1019', 'res1006' );
insert into project_ra values( 'pro1019', 'res1004' );
insert into project_ra values( 'pro1019', 'res1007' );
insert into project_ra values( 'pro1020', 'res1005' );
insert into project_ra values( 'pro1020', 'res1018' );
insert into project_ra values( 'pro1020', 'res1017' );


























insert into funded_by values( 'pro1001', 'age1003' );
insert into funded_by values( 'pro1002', 'age1002' );
insert into funded_by values( 'pro1003', 'age1008' );
insert into funded_by values( 'pro1004', 'age1018' );
insert into funded_by values( 'pro1005', 'age1011' );
insert into funded_by values( 'pro1006', 'age1003' );
insert into funded_by values( 'pro1007', 'age1011' );
insert into funded_by values( 'pro1008', 'age1019' );
insert into funded_by values( 'pro1009', 'age1019' );
insert into funded_by values( 'pro1010', 'age1017' );
insert into funded_by values( 'pro1011', 'age1003' );
insert into funded_by values( 'pro1012', 'age1007' );
insert into funded_by values( 'pro1013', 'age1016' );
insert into funded_by values( 'pro1014', 'age1012' );
insert into funded_by values( 'pro1015', 'age1016' );
insert into funded_by values( 'pro1016', 'age1006' );
insert into funded_by values( 'pro1017', 'age1009' );
insert into funded_by values( 'pro1018', 'age1010' );
insert into funded_by values( 'pro1019', 'age1019' );
insert into funded_by values( 'pro1020', 'age1016' );



























insert into interest values( 'fac1001', 'res1002' );
insert into interest values( 'fac1001', 'res1020' );
insert into interest values( 'fac1001', 'res1014' );
insert into interest values( 'fac1002', 'res1007' );
insert into interest values( 'fac1002', 'res1001' );
insert into interest values( 'fac1002', 'res1009' );
insert into interest values( 'fac1003', 'res1003' );
insert into interest values( 'fac1003', 'res1015' );
insert into interest values( 'fac1003', 'res1012' );
insert into interest values( 'fac1004', 'res1019' );
insert into interest values( 'fac1004', 'res1016' );
insert into interest values( 'fac1004', 'res1007' );
insert into interest values( 'fac1005', 'res1017' );
insert into interest values( 'fac1005', 'res1007' );
insert into interest values( 'fac1005', 'res1020' );
insert into interest values( 'fac1006', 'res1011' );
insert into interest values( 'fac1006', 'res1007' );
insert into interest values( 'fac1006', 'res1017' );
insert into interest values( 'fac1007', 'res1001' );
insert into interest values( 'fac1007', 'res1015' );
insert into interest values( 'fac1007', 'res1009' );
insert into interest values( 'fac1008', 'res1011' );
insert into interest values( 'fac1008', 'res1018' );
insert into interest values( 'fac1008', 'res1016' );
insert into interest values( 'fac1009', 'res1015' );
insert into interest values( 'fac1009', 'res1018' );
insert into interest values( 'fac1009', 'res1020' );
insert into interest values( 'fac1010', 'res1005' );
insert into interest values( 'fac1010', 'res1004' );
insert into interest values( 'fac1010', 'res1010' );
insert into interest values( 'fac1011', 'res1018' );
insert into interest values( 'fac1011', 'res1015' );
insert into interest values( 'fac1011', 'res1016' );
insert into interest values( 'fac1012', 'res1016' );
insert into interest values( 'fac1012', 'res1019' );
insert into interest values( 'fac1012', 'res1010' );
insert into interest values( 'fac1013', 'res1007' );
insert into interest values( 'fac1013', 'res1009' );
insert into interest values( 'fac1013', 'res1005' );
insert into interest values( 'fac1014', 'res1006' );
insert into interest values( 'fac1014', 'res1017' );
insert into interest values( 'fac1014', 'res1004' );
insert into interest values( 'fac1015', 'res1017' );
insert into interest values( 'fac1015', 'res1007' );
insert into interest values( 'fac1015', 'res1010' );
insert into interest values( 'fac1016', 'res1006' );
insert into interest values( 'fac1016', 'res1007' );
insert into interest values( 'fac1016', 'res1016' );
insert into interest values( 'fac1017', 'res1014' );
insert into interest values( 'fac1017', 'res1010' );
insert into interest values( 'fac1017', 'res1005' );
insert into interest values( 'fac1018', 'res1001' );
insert into interest values( 'fac1018', 'res1004' );
insert into interest values( 'fac1018', 'res1002' );
insert into interest values( 'fac1019', 'res1015' );
insert into interest values( 'fac1019', 'res1003' );
insert into interest values( 'fac1019', 'res1018' );
insert into interest values( 'fac1020', 'res1010' );
insert into interest values( 'fac1020', 'res1005' );
insert into interest values( 'fac1020', 'res1007' );
insert into interest values( 'fac1021', 'res1005' );
insert into interest values( 'fac1021', 'res1012' );
insert into interest values( 'fac1021', 'res1002' );
insert into interest values( 'fac1022', 'res1012' );
insert into interest values( 'fac1022', 'res1019' );
insert into interest values( 'fac1022', 'res1001' );
insert into interest values( 'fac1023', 'res1018' );
insert into interest values( 'fac1023', 'res1012' );
insert into interest values( 'fac1023', 'res1017' );
insert into interest values( 'fac1024', 'res1015' );
insert into interest values( 'fac1024', 'res1008' );
insert into interest values( 'fac1024', 'res1020' );
insert into interest values( 'fac1025', 'res1011' );
insert into interest values( 'fac1025', 'res1007' );
insert into interest values( 'fac1025', 'res1001' );
insert into interest values( 'fac1026', 'res1008' );
insert into interest values( 'fac1026', 'res1013' );
insert into interest values( 'fac1026', 'res1016' );
insert into interest values( 'fac1027', 'res1013' );
insert into interest values( 'fac1027', 'res1002' );
insert into interest values( 'fac1027', 'res1020' );
insert into interest values( 'fac1028', 'res1013' );
insert into interest values( 'fac1028', 'res1017' );
insert into interest values( 'fac1028', 'res1020' );
insert into interest values( 'fac1029', 'res1012' );
insert into interest values( 'fac1029', 'res1010' );
insert into interest values( 'fac1029', 'res1001' );
insert into interest values( 'fac1030', 'res1016' );
insert into interest values( 'fac1030', 'res1017' );
insert into interest values( 'fac1030', 'res1019' );
insert into interest values( 'fac1031', 'res1010' );
insert into interest values( 'fac1031', 'res1008' );
insert into interest values( 'fac1031', 'res1017' );
insert into interest values( 'fac1032', 'res1001' );
insert into interest values( 'fac1032', 'res1020' );
insert into interest values( 'fac1032', 'res1006' );
insert into interest values( 'fac1033', 'res1013' );
insert into interest values( 'fac1033', 'res1017' );
insert into interest values( 'fac1033', 'res1020' );
insert into interest values( 'fac1034', 'res1012' );
insert into interest values( 'fac1034', 'res1008' );
insert into interest values( 'fac1034', 'res1003' );
insert into interest values( 'fac1035', 'res1018' );
insert into interest values( 'fac1035', 'res1009' );
insert into interest values( 'fac1035', 'res1010' );
insert into interest values( 'fac1036', 'res1011' );
insert into interest values( 'fac1036', 'res1004' );
insert into interest values( 'fac1036', 'res1003' );
insert into interest values( 'fac1037', 'res1004' );
insert into interest values( 'fac1037', 'res1016' );
insert into interest values( 'fac1037', 'res1007' );
insert into interest values( 'fac1038', 'res1013' );
insert into interest values( 'fac1038', 'res1008' );
insert into interest values( 'fac1038', 'res1018' );
insert into interest values( 'fac1039', 'res1004' );
insert into interest values( 'fac1039', 'res1018' );
insert into interest values( 'fac1039', 'res1019' );
insert into interest values( 'fac1040', 'res1011' );
insert into interest values( 'fac1040', 'res1005' );
insert into interest values( 'fac1040', 'res1007' );
insert into interest values( 'fac1041', 'res1009' );
insert into interest values( 'fac1041', 'res1014' );
insert into interest values( 'fac1041', 'res1007' );
insert into interest values( 'fac1042', 'res1017' );
insert into interest values( 'fac1042', 'res1007' );
insert into interest values( 'fac1042', 'res1006' );
insert into interest values( 'fac1043', 'res1015' );
insert into interest values( 'fac1043', 'res1019' );
insert into interest values( 'fac1043', 'res1002' );
insert into interest values( 'fac1044', 'res1014' );
insert into interest values( 'fac1044', 'res1002' );
insert into interest values( 'fac1044', 'res1016' );
insert into interest values( 'fac1045', 'res1020' );
insert into interest values( 'fac1045', 'res1010' );
insert into interest values( 'fac1045', 'res1018' );
insert into interest values( 'fac1046', 'res1002' );
insert into interest values( 'fac1046', 'res1005' );
insert into interest values( 'fac1046', 'res1020' );
insert into interest values( 'fac1047', 'res1017' );
insert into interest values( 'fac1047', 'res1020' );
insert into interest values( 'fac1047', 'res1018' );
insert into interest values( 'fac1048', 'res1009' );
insert into interest values( 'fac1048', 'res1020' );
insert into interest values( 'fac1048', 'res1016' );
insert into interest values( 'fac1049', 'res1012' );
insert into interest values( 'fac1049', 'res1009' );
insert into interest values( 'fac1049', 'res1006' );
insert into interest values( 'fac1050', 'res1002' );
insert into interest values( 'fac1050', 'res1013' );
insert into interest values( 'fac1050', 'res1012' );

insert into admin values("ADMIN00","Adarsh","asdf","abc@gmail.com","8827275145","M","2007-02-12");
insert into admin values("ADMIN01","Chandan","asdf","def@gmail.com","8827275145","M","2004-08-25");




select sum(budget) from projects where pro_id in 
(select distinct made_pro.pro_id from made_pro, user where made_pro.f_id = user.f_id and user.department = 'ME')
and (select distinct projects.pro_id from projects, user where made_pro.f_id = user.f_id and year(projects.date) = 2017)
;


select sum(budget) from projects where pro_id in  
(select distinct made_pro.pro_id from made_pro, user where made_pro.f_id = user.f_id and user.department = 'ME') 
and year(projects.date_)="1975";   