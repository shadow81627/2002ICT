 Insert into hotel values ('H01', 'Grosvenor Hotel',  'Sydney');
 Insert into hotel values ('H02', 'ANA Hotel',  'Sydney');
 Insert into hotel values ('H03', 'Great Mansion Hotel',  'Brisbane');
 Insert into hotel values ('H04', 'Grand Hotel',  'Brisbane');
 Insert into hotel values ('H05', 'Central Hotel',  'Sydney');
 Insert into hotel values ('H06', 'Airport Hotel',  'Sydney');


 Insert into guest values (1, 'David Goodman',  '21 mains rd,Sydney');
 Insert into guest values (2, 'Lisa Bourke', Null);
 Insert into guest values (3, 'Lawrence Dooley',  '12 Sydney street, Brisbane');
 Insert into guest values (4, 'Ray Maher',  '10 Churchill Court, Brisbane');
 Insert into guest values (5, 'David Smith',  '101 San_Lurry St, Brisbane');
 Insert into guest values (6, 'John Wang',  '1 newfound Rd, Gold Coast');


 Insert into room values ('001', 'H01',  'F', 120);
 Insert into room values ('002', 'H01',  'F', 120);
 Insert into room values ('003', 'H01',  'LD', 150);
 Insert into room values ('004', 'H01',  'D', 100);
 Insert into room values ('005', 'H01',  'S', 80);
 Insert into room values ('006', 'H01',  'S', 80);
 Insert into room values ('001', 'H02',  'LS', 100);
 Insert into room values ('002', 'H02',  'S', 78);
 Insert into room values ('003', 'H02',  'S', 78);
 Insert into room values ('004', 'H02',  'BF', 75);


 Insert into booking values ('H01', 1,  '01-Apr-2014', '10-apr-2014', '001');
 Insert into booking values ('H01', 2,  sysdate-1, sysdate+5, '002');
 Insert into booking values ('H01', 3,  '01-Apr-2014', '10-apr-2014', '006');
 Insert into booking values ('H02', 2,  sysdate-1, sysdate+5, '004');
 Insert into booking values ('H01', 4,  '01-feb-2014', '10-feb-2014', '001');
 Insert into booking values ('H01', 2,  '20-feb-2014', '01-mar-2014', '002');
 Insert into booking values ('H01', 3,  '10-feb-2014', '15-feb-2014', '006');