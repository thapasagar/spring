INSERT INTO COUNTRY (COUNTRY_ID,COUNTRY_NAME,COUNTRY_ABB) 
VALUES 
('CID001','United States', 'USA'),
('CID002','Canada','CAN'),
('CID003','Mexico','MEX');


INSERT INTO STATES (STATE_ID,STATE_NAME,STATE_ABB,COUNTRY_ID) 
VALUES 
('SID00101','Alabama','AL','CID001'),
('SID00102','Alaska','AK','CID001'),
('SID00103','Arizona','AZ','CID001'),
('SID00104','Arkansas','AR','CID001'),
('SID00105','California','CA','CID001'),
('SID00106','Colorado','CO','CID001'),
('SID00107','Connecticut','CT','CID001'),
('SID00108','Delaware','DE','CID001'),
('SID00109','District of Columbia','DC','CID001'),
('SID00110','Florida','FL','CID001'),
('SID00111','Georgia','GA','CID001'),
('SID00112','Hawaii','HI','CID001'),
('SID00113','Idaho','ID','CID001'),
('SID00114','Illinois','IL','CID001'),
('SID00115','Indiana','IN','CID001'),
('SID00116','Iowa','IA','CID001'),
('SID00117','Kansas','KS','CID001'),
('SID00118','Kentucky','KY','CID001'),
('SID00119','Louisiana','LA','CID001'),
('SID00120','Maine','ME','CID001'),
('SID00121','Montana','MT','CID001'),
('SID00122','Nebraska','NE','CID001'),
('SID00123','Nevada','NV','CID001'),
('SID00124','New Hampshire','NH','CID001'),
('SID00125','New Jersey','NJ','CID001'),
('SID00126','New Mexico','NM','CID001'),
('SID00127','New York','NY','CID001'),
('SID00128','North Carolina','NC','CID001'),
('SID00129','North Dakota','ND','CID001'),
('SID00130','Ohio','OH','CID001'),
('SID00131','Oklahoma','OK','CID001'),
('SID00132','Oregon','OR','CID001'),
('SID00133','Maryland','MD','CID001'),
('SID00134','Massachusetts','MA','CID001'),
('SID00135','Michigan','MI','CID001'),
('SID00136','Minnesota','MN','CID001'),
('SID00137','Mississippi','MS','CID001'),
('SID00138','Missouri','MO','CID001'),
('SID00139','Pennsylvania','PA','CID001'),
('SID00140','Rhode Island','RI','CID001'),
('SID00141','South Carolina','SC','CID001'),
('SID00142','South Dakota','SD','CID001'),
('SID00143','Tennessee','TN','CID001'),
('SID00144','Texas','TX','CID001'),
('SID00145','Utah','UT','CID001'),
('SID00146','Vermont','VT','CID001'),
('SID00147','Virginia','VA','CID001'),
('SID00148','Washington','WA','CID001'),
('SID00149','West Virginia','WV','CID001'),
('SID00150','Wisconsin','WI','CID001'),
('SID00151','Wyoming','WY','CID001'),
('SID00201','Alberta','AB','CID002'),
('SID00202','British Columbia','BC','CID002'),
('SID00203','Manitoba','MB','CID002'),
('SID00204','New Brunswick','NB','CID002'),
('SID00205','Newfoundland and Labrador','NL','CID002'),
('SID00206','Northwest Territories','NT','CID002'),
('SID00207','Nova Scotia','NS','CID002'),
('SID00208','Nunavut','NU','CID002'),
('SID00209','Ontario','ON','CID002'),
('SID00210','Prince Edward Island','PE','CID002'),
('SID00211','Quebec','QC','CID002'),
('SID00212','Saskatchewan','SK','CID002'),
('SID00213','Yukon','YT','CID002');

 
INSERT INTO USERS (USER_ID, USERNAME, EMAIL, LAST_NAME, FIRST_NAME, ROLE)
VALUES 
('PM10000001', 'sthapa', 'sthapa@gmail.com', 'Thapa', 'agar', 'ADMIN');
/*
("PM10000002", "sthapa123", "sthapa123@gmail.com", "Thapa", "sam", "USER"),
("PM10000003", "sthapa324", "sthapa324@gmail.com", "Thapa", "jim", "USER");
*/
