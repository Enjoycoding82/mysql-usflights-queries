--1
SELECT COUNT(flightID) FROM flights;

--2
SELECT origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides 
FROM usairlineflights2.flights 
GROUP BY origin;

--3
SELECT origin, colYear, colMonth, ArrDelay+.0000 AS prom_arribades
FROM flights 
ORDER BY origin, colYear;

--4
SELECT city, colYear, colMonth, ArrDelay+.0000 AS prom_arribades
FROM flights INNER JOIN usairports
WHERE flights.origin=usairports.IATA
ORDER BY origin, colYear;

--5
SELECT UniqueCarrier, colYear, colMonth, COUNT(cancelled) AS 'total_cancelled' 
FROM flights WHERE cancelled='1' GROUP BY UniqueCarrier
ORDER by total_cancelled DESC;

--6
SELECT TailNum, SUM(Distance) AS 'totalDistance' 
FROM flights
GROUP BY TailNum
ORDER BY totalDistance DESC;

--7
SELECT UniqueCarrier, AVG(ArrDelay) AS 'avgDelay' 
FROM flights 
GROUP BY UniqueCarrier 
HAVING avgDelay >10
ORDER by avgDelay DESC










