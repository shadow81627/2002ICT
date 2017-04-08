REM 1. List full details of all hotels.
SELECT * FROM hotel;

REM 2. List full details of all hotels in Brisbane.
SELECT * FROM HOTEL
WHERE city = 'Brisbane';

REM 3. List all double rooms (room types 'D', 'BD' and 'LD') with a price less than 80.
SELECT * FROM room
WHERE roomType = IN('D', 'BD', 'LD'), AND price < 80;

REM 4. List all rooms priced between 100 and 200.
SELECT * FROM room
WHERE price BETWEEN(100 AND 200);

REM 5. List all guests whose address is not recorded.
SELECT * FROM guest
WHERE guestAddress IS NULL;

REM 6. List all guests whose names begin with ‘D’ and end with ‘th’.
SELECT * FROM guest
WHERE guestName LIKE'D%th';

REM 7. Increase the price of all rooms at hotel ʻH01ʼ by 5%.
UPDATE room SET price = price * 1.05
WHERE hotelNo = 'H01';

REM 8. Delete the bookings that ended before 01/01/2005.
DELETE FROM booking 
WHERE dateFrom < 01/01/2005;