DROP TABLE  booking;
DROP TABLE guest;
DROP TABLE room;
DROP TABLE hotel;

CREATE TABLE hotel(
					hotelNo CHAR(3), 
					hotelName VARCHAR(20) NOT NULL, 
					city VARCHAR(20) NOT NULL,
					CONSTRAINT PK_hotel PRIMARY KEY (hotelNo)
					);

CREATE TABLE room(
					roomNo CHAR(3),
					hotelNo CHAR(3) NOT NULL,
					roomType CHAR(2) NOT NULL,
					price NUMBER(3) NOT NULL,
					CONSTRAINT FK_room_hotelNo FOREIGN KEY (hotelNo) REFERENCES hotel(hotelNo),
					CONSTRAINT PK_room PRIMARY KEY (roomNo, hotelNo),
					CONSTRAINT check_room_type CHECK(roomType IN ('BS', 'BD', 'BF', 'S', 'D', 'F', 'LS', 'LD', 'LF')),
					CONSTRAINT check_room_price CHECK(price BETWEEN 50 AND 350)
					);
					
CREATE TABLE guest( 
					guestNo NUMBER(8), 
					guestName VARCHAR(30) NOT NULL,
					guestAddress VARCHAR(30),
					CONSTRAINT PK_guestNo PRIMARY KEY (guestNo)
					);

CREATE TABLE booking(
					hotelNo CHAR(3), 
					guestNo NUMBER(8),
					dateFrom DATE,
					dateTo DATE NOT NULL,
					roomNo CHAR(3) NOT NULL,
					CONSTRAINT FK_booking_hotelNo_roomNo FOREIGN KEY (hotelNo, roomNo) 
					REFERENCES room(roomNo, hotelNo),
					CONSTRAINT FK_booking_guestNo FOREIGN KEY (guestNo) REFERENCES guest(guestNo),
					CONSTRAINT PK_booking PRIMARY KEY (guestNo, roomNo, dateFrom),
					CONSTRAINT check_booking_date CHECK(dateFrom <= dateTo)
					);
					