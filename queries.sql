DROP TABLE standings CASCADE CONSTRAINTS;
DROP TABLE race CASCADE CONSTRAINTS;
DROP TABLE circuit CASCADE CONSTRAINTS;
DROP TABLE team_principal CASCADE CONSTRAINTS;
DROP TABLE player CASCADE CONSTRAINTS;
DROP TABLE team CASCADE CONSTRAINTS;

-- TABLE TEAM


CREATE TABLE team (
Team_id INT PRIMARY KEY,
Team_name VARCHAR(50),
Team_country VARCHAR(50),
Season_points INT
);

-- TABLE PLAYER 


CREATE TABLE player (
FIA_Super_License_no INT PRIMARY KEY,
First_name VARCHAR(50),
Middle_name VARCHAR(50),
Last_name VARCHAR(50),
Nationality VARCHAR(50),
DOB DATE,
Team_id INT,
Season_point INT,
Year_of_joining INT,
Contract_value NUMBER(12,2),
Contract_upto INT,
CONSTRAINT fk_player_Team_id FOREIGN KEY (Team_id)
REFERENCES team (Team_id)
);

-- TABLE TEAM PRINCIPAL


CREATE TABLE team_principal (
T_id INT PRIMARY KEY,
Nationality VARCHAR(50),
First_name VARCHAR(50),
Middle_name VARCHAR(50),
Last_name VARCHAR(50),
Team_id INT,
Year_of_joining INT,
Salary NUMBER(12,2),
CONSTRAINT fk_Team_Principal_Team_id FOREIGN KEY (Team_id)
REFERENCES team (Team_id)
);

-- TABLE CIRCUIT


CREATE TABLE circuit (
Circuit_id INT PRIMARY KEY,
Circuit_name VARCHAR(50),
City VARCHAR(50)
);

-- TABLE RACE 


CREATE TABLE race (
Race_id INT PRIMARY KEY,
Circuit_id INT,
Race_date DATE,
Race_distance NUMBER(6,2),
CONSTRAINT fk_race_Circuit_id FOREIGN KEY (Circuit_id)
REFERENCES circuit (Circuit_id)
);

-- TABLE STANDINGS

CREATE TABLE standings (
Player_points INT DEFAULT 0,
Player_id INT,
Race_id INT,
CONSTRAINT fk_standings_Race_id FOREIGN KEY (Race_id)
REFERENCES race (Race_id),
CONSTRAINT fk_standings_Player_id FOREIGN KEY (Player_id)
REFERENCES player (FIA_Super_License_no),
CONSTRAINT ck_player_race_composite_key PRIMARY KEY (Player_id, Race_id)
);



-- TABLE CREATION DONE 



Insert into Team (team_name, team_id, team_country, season_points) values
('Oracle Red Bull Racing', 003, 'United Kingdom', 195);
Insert into Team (team_name, team_id, team_country, season_points) values
('Scuderia Ferrari HP', 007, 'Italy', 151);
Insert into Team (team_name, team_id, team_country, season_points) values
('McLaren Formula 1', 055, 'United Kingdom', 96);
Insert into Team (team_name, team_id, team_country, season_points) values
('Mercedes-AMG PETRONAS', 009, 'United Kingdom', 52);
Insert into Team (team_name, team_id, team_country, season_points) values
('Aston Martin Aramco F1', 079, 'United Kingdom', 50);
Insert into Team (team_name, team_id, team_country, season_points) values
('Visa Cash App RB Formula One', 074, 'Italy', 7);
Insert into Team (team_name, team_id, team_country, season_points) values
('MoneyGram Haas F1', 065, 'United States', 5);
Insert into Team (team_name, team_id, team_country, season_points) values
('Williams Racing', 089, 'United Kingdom', 0);
Insert into Team (team_name, team_id, team_country, season_points) values
('BWT Alpine F1', 062, 'United Kingdom', 0);
Insert into Team (team_name, team_id, team_country, season_points) values
('Stake F1 Team Kick Sauber', 095, 'Switzerland', 0);

-- TEAM TABLE INSTERTION DONE 


Insert into player (FIA_SUPER_LICENSE_NO , FIRST_NAME , MIDDLE_NAME , LAST_NAME , NATIONALITY , DOB ,
TEAM_ID , SEASON_POINT , YEAR_OF_JOINING , CONTRACT_VALUE , CONTRACT_UPTO)
values
(8568, 'Max', 'Joe', 'Verstappen', 'Netherlands', TO_DATE('1997-09-30', 'YYYY-MM-DD'), 3, 110, 2016, 55000000,
2028);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(6234, 'Sergio', 'Michel', 'Perez', 'Mexico', TO_DATE('1990-01-26', 'YYYY-MM-DD'), 3, 85, 2011, 14000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(5523, 'Charles', 'Marc', 'Leclerc', 'Monaco', TO_DATE('1997-10-16', 'YYYY-MM-DD'), 7, 76, 2019, 34000000, 2025);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(5635, 'Carlos', 'Sainz', 'Vázquez', 'Spain', TO_DATE('1994-09-01', 'YYYY-MM-DD'), 7, 69, 2021, 15000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(9789, 'Lando', '', 'Norris', 'United Kingdom', TO_DATE('1999-11-13', 'YYYY-MM-DD'), 55, 58, 2022, 20000000, 2025);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(8781, 'Oscar', 'Jack', 'Piastri', 'Australia', TO_DATE('2004-04-06', 'YYYY-MM-DD'), 55, 38, 2020, 750000, 2026);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(8780, 'Lewis', 'Carl Davidson', 'Hamilton', 'United Kingdom', TO_DATE('1985-01-07', 'YYYY-MM-DD'), 9, 19, 2013,
55000000, 2025);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(7562, 'George', 'William', 'Russell', 'United Kingdom', TO_DATE('1998-02-15', 'YYYY-MM-DD'), 9, 33, 2022, 18000000,
2025);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(4399, 'Ferrando', 'Alonso', 'Diaz', 'Spain', TO_DATE('1981-07-29', 'YYYY-MM-DD'), 79, 31, 2023, 24000000, 2026);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(4509, 'Lance', '', 'Stroll', 'Canada', TO_DATE('1998-10-29', 'YYYY-MM-DD'), 79, 9, 2019, 1915000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(9890, 'Yuki', '', 'Tsunoda', 'Japan', TO_DATE('2000-05-11', 'YYYY-MM-DD'), 74, 7, 2016, 1000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(7682, 'Daniel', 'Joseph', 'Ricardo', 'Australia', TO_DATE('1989-07-01', 'YYYY-MM-DD'), 74, 0, 2023, 7000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(7783, 'Nicolas', '', 'Hülkenberg', 'Germany', TO_DATE('1987-08-19', 'YYYY-MM-DD'), 65, 4, 2023, 2000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(4525, 'Kevin', 'Jan', 'Magnussen', 'Denmark', TO_DATE('1992-10-05', 'YYYY-MM-DD'), 65, 1, 2017, 5000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(3454, 'Alexander', 'Albon', 'Ansusinha', 'Thailand', TO_DATE('1996-03-23', 'YYYY-MM-DD'), 89, 0, 2022, 3000000,
2025);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(2671, 'Logan', 'Hunter', 'Sargeant', 'United States', TO_DATE('2000-12-31', 'YYYY-MM-DD'), 89, 0, 2021, 1000000,
2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(1234, 'Pierre', 'Jean-Jacques', 'Gasly', 'France', TO_DATE('1996-02-07', 'YYYY-MM-DD'), 62, 0, 2023, 5000000, 2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(7882, 'Esteban', 'José Jean-Pierre', 'Ocon', 'France', TO_DATE('1996-09-17', 'YYYY-MM-DD'), 62, 0, 2020, 6000000,
2024);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(8367, 'Valtteri', 'Viktor', 'Bottas', 'Finland', TO_DATE('1989-08-28', 'YYYY-MM-DD'), 95, 0, 2022, 10000000, 2025);
Insert into player (FIA_SUPER_LICENSE_NO, FIRST_NAME, MIDDLE_NAME, LAST_NAME, NATIONALITY, DOB,
TEAM_ID, SEASON_POINT, YEAR_OF_JOINING, CONTRACT_VALUE, CONTRACT_UPTO)
values
(9191, 'Guanyu', '', 'Zhou', 'China', TO_DATE('1999-05-30', 'YYYY-MM-DD'), 95, 0, 2022, 2000000, 2024);


-- INSERTION DONE IN TEAM PLAYERSS



Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(320, 'United Kingdom', 'Christian', ' Edward Johnston', 'Horner', 3, 2005, 10000000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(452, 'France', 'Frédéric', '', 'Vasseur', 7, 2022, 7000000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(767, 'Italy', 'Andrea', '', 'Stella', 55, 2015, 5000000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(979, 'Austria', 'Torger', 'Christian', 'Wolﬀ', 9, 2013, 4400000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(434, 'Luxembourgish', 'Mike', '', 'Krack', 79, 2018, 856000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(645, 'France', 'Laurent', '', 'Mekies', 74, 2024, 700000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(782, 'Japan', 'Ayao', '', 'Komatsu', 65, 2016, 650000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(878, 'United Kingdom', 'James', 'Patrick', 'Vowles', 89, 2023, 4280000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(542, 'France', 'Bruno', '', 'Famin', 62, 2022, 5000000);
Insert into Team_Principal(T_ID, NATIONALITY, FIRST_NAME, MIDDLE_NAME, LAST_NAME, TEAM_ID,
YEAR_OF_JOINING, SALARY) values
(892, 'Italy', 'Alessandro', 'Alunni', 'Bravi', 3, 2023, 800000);



-- INSERTIOIN INTO TEAM PRINCIPAL DONEEE


Insert into Circuit (circuit_id, Circuit_name, city) values (1, 'Bahrain International Circuit', 'Bahrain');
Insert into Circuit (circuit_id, Circuit_name, city) values (2, 'JEDDAH CORNICHE CIRCUIT', 'Saudi Arabia');
Insert into Circuit (circuit_id, Circuit_name, city) values (3, 'MELBOURNE GRAND PRIX CIRCUIT', 'Australia');
Insert into Circuit (circuit_id, Circuit_name, city) values (4, 'SUZUKA INTERNATIONAL RACING COURSE', 'Japan');
Insert into Circuit (circuit_id, Circuit_name, city) values (5, 'SHANGHAI INTERNATIONAL CIRCUIT', 'China');
Insert into Circuit (circuit_id, Circuit_name, city) values (6, 'MIAMI INTERNATIONAL AUTODROME', 'Miami');
Insert into Circuit (circuit_id, Circuit_name, city) values (7, 'AUTODROMO ENZO E DINO FERRARI', 'Emilia Romagna');
Insert into Circuit (circuit_id, Circuit_name, city) values (8, 'CIRCUIT DE MONACO', 'Monaco');
Insert into Circuit (circuit_id, Circuit_name, city) values (9, 'CIRCUIT GILLES-VILLENEUVE', 'Canada');
Insert into Circuit (circuit_id, Circuit_name, city) values (10, 'CIRCUIT DE BARCELONA-CATALUNYA', 'Spain');
Insert into Circuit (circuit_id, Circuit_name, city) values (11, 'RED BULL RING', 'Austria');
Insert into Circuit (circuit_id, Circuit_name, city) values (12, 'SILVERSTONE CIRCUIT', 'Great Britain');
Insert into Circuit (circuit_id, Circuit_name, city) values (13, 'HUNGARORING', 'Hungary');
Insert into Circuit (circuit_id, Circuit_name, city) values (14, 'CIRCUIT DE SPA-FRANCORCHAMPS', 'Belgium');
Insert into Circuit (circuit_id, Circuit_name, city) values (15, 'CIRCUIT ZANDVOORT', 'Netherlands');
Insert into Circuit (circuit_id, Circuit_name, city) values (16, 'AUTODROMO NAZIONALE MONZA', 'Italy');
Insert into Circuit (circuit_id, Circuit_name, city) values (17, 'BAKU CITY CIRCUIT', 'AZERBAIJAN');
Insert into Circuit (circuit_id, Circuit_name, city) values (18, 'MARINA BAY STREET CIRCUIT', 'Singapore');
Insert into Circuit (circuit_id, Circuit_name, city) values (19, 'CIRCUIT OF THE AMERICAS', 'United States');
Insert into Circuit (circuit_id, Circuit_name, city) values (20, 'AUTÓDROMO HERMANOS RODRÍGUEZ', 'Mexico');
Insert into Circuit (circuit_id, Circuit_name, city) values (21, 'AUTÓDROMO JOSÉ CARLOS PACE', 'Brazil');
Insert into Circuit (circuit_id, Circuit_name, city) values (22, 'LAS VEGAS STRIP CIRCUIT', 'Las Vegas');
Insert into Circuit (circuit_id, Circuit_name, city) values (23, 'LUSAIL INTERNATIONAL CIRCUIT', 'Qatar');
Insert into Circuit (circuit_id, Circuit_name, city) values (24, 'YAS MARINA CIRCUIT', 'Abu Dhabi');



-- INSERTION INTO TEAM CIRCUIT DONEE


Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (1, 981, TO_DATE('2024-02-29', 'YYYY-
MM-DD'), 308.24);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (2, 982, TO_DATE('2024-03-09', 'YYYY-
MM-DD'), 308.45);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (3, 983, TO_DATE('2024-03-24', 'YYYY-
MM-DD'), 306.12);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (4, 984, TO_DATE('2024-04-07', 'YYYY-
MM-DD'), 307.47);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (5, 985, TO_DATE('2024-04-21', 'YYYY-
MM-DD'), 305.07);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (6, 986, TO_DATE('2024-05-06', 'YYYY-
MM-DD'), 308.33);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (7, 987, TO_DATE('2024-05-19', 'YYYY-
MM-DD'), 309.05);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (8, 988, TO_DATE('2024-05-26', 'YYYY-
MM-DD'), 260.29);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (9, 989, TO_DATE('2024-06-09', 'YYYY-
MM-DD'), 305.27);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (10, 990, TO_DATE('2024-06-23',
'YYYY-MM-DD'), 307.24);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (11, 991, TO_DATE('2024-06-30',
'YYYY-MM-DD'), 306.45);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (12, 992, TO_DATE('2024-07-07',
'YYYY-MM-DD'), 306.20);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (13, 993, TO_DATE('2024-07-21',
'YYYY-MM-DD'), 306.63);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (14, 994, TO_DATE('2024-07-28',
'YYYY-MM-DD'), 308.05);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (15, 995, TO_DATE('2024-08-25',
'YYYY-MM-DD'), 306.59);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (16, 996, TO_DATE('2024-09-01',
'YYYY-MM-DD'), 306.72);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (17, 997, TO_DATE('2024-09-15',
'YYYY-MM-DD'), 306.05);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (18, 998, TO_DATE('2024-09-22',
'YYYY-MM-DD'), 306.14);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (19, 999, TO_DATE('2024-10-20',
'YYYY-MM-DD'), 308.41);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (20, 1000, TO_DATE('2024-10-27',
'YYYY-MM-DD'), 305.88);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (21, 1001, TO_DATE('2024-11-03',
'YYYY-MM-DD'), 305.88);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (22, 1002, TO_DATE('2024-11-23',
'YYYY-MM-DD'), 309.96);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (23, 1003, TO_DATE('2024-12-01',
'YYYY-MM-DD'), 308.61);
Insert into Race(CIRCUIT_ID, RACE_ID, RACE_DATE, RACE_DISTANCE) values (24, 1004, TO_DATE('2024-12-08',
'YYYY-MM-DD'), 306.18);



-- INSERTION INTO RACE DONEE





Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (25, 8568, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (18, 9789, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (15, 6234, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (12, 5523, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (10, 5635, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (8, 7562, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (7, 4399, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (4, 8781, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (2, 8780, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (1, 7783, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 7882, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 3454, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 1234, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 9191, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 4509, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 4525, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 2671, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 7682, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 9890, 985);
Insert into standings(PLAYER_POINTS, PLAYER_ID, RACE_ID) values (0, 8367, 985);

-- INSERTION INTO STANDINGS DONEE

CREATE OR REPLACE PROCEDURE TeamNAME (
    T IN TEAM.TEAM_ID%TYPE
) IS
    R VARCHAR2(30);
BEGIN
    SELECT TEAM_NAME
    INTO R
    FROM TEAM
    WHERE TEAM_ID = T;

    DBMS_OUTPUT.PUT_LINE('THE TEAM NAME IS ' || R);
END;
/

BEGIN
  TeamNAME(79);
END;

CREATE OR REPLACE PROCEDURE PlayerName(P_ID IN NUMBER) AS
player_name VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || NVL(middle_name || ' ', '') || last_name
    INTO player_name
    FROM Player
    WHERE FIA_SUPER_LICENSE_NO = P_ID;

    DBMS_OUTPUT.PUT_LINE('Player Name for ' || P_ID || ': ' || player_name);
END;
/
--This procedure retrieves full player name using ID
BEGIN
  PlayerName(5635);
END;

CREATE OR REPLACE PROCEDURE POINTS(A IN INT, B IN INT) IS
n INT;
BEGIN
    SELECT PLAYER_POINTS
    INTO n
    FROM standings
    WHERE PLAYER_ID = A AND RACE_ID = B;

    UPDATE player
    SET SEASON_POINT = SEASON_POINT + n
    WHERE FIA_SUPER_LICENSE_NO = A;
END;
/

-- This procedure dynamically updates the player's total season points 
--by extracting race-wise points from the standings table 
--and adding them to the existing value.


SELECT season_point 
FROM player 
WHERE FIA_SUPER_LICENSE_NO = 8568;

-- before 

BEGIN
  POINTS(8568, 985);
END;

-- after 

SELECT season_point FROM player WHERE FIA_SUPER_LICENSE_NO = 8568;


--This uses JOIN between team and team_principal
-- to fetch manager name

CREATE OR REPLACE PROCEDURE get_name_team(T_Name IN VARCHAR2) AS
principal_name VARCHAR2(100);
BEGIN
    SELECT tp.first_name || ' ' || NVL(tp.middle_name || ' ', '') || tp.last_name
    INTO principal_name
    FROM Team_Principal tp
    JOIN Team t ON tp.team_id = t.team_id
    WHERE t.team_name LIKE '%' || T_Name || '%';

    DBMS_OUTPUT.PUT_LINE('Team Principal for ' || T_Name || ': ' || principal_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Team not found.');
END;
/

-- procedure get team name
 BEGIN
  get_name_team('Ferrari');
END;

CREATE OR REPLACE FUNCTION matchWon RETURN VARCHAR2 IS
won VARCHAR2(50);
BEGIN
    SELECT TEAM_NAME
    INTO won
    FROM Team
    WHERE season_points = (SELECT MAX(season_points) FROM Team);

    RETURN won;
END;
/

--This function returns the team 
--with maximum season points using a subquery.

BEGIN
  DBMS_OUTPUT.PUT_LINE(matchWon());
END;


CREATE OR REPLACE FUNCTION Max_Salary(n IN INT) RETURN NUMBER IS
x NUMBER;
BEGIN
    IF n = 0 THEN
        SELECT MAX(CONTRACT_VALUE) INTO x FROM player;
    ELSIF n = 1 THEN
        SELECT MAX(Salary) INTO x FROM Team_Principal;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'NOT A VALID OPTION');
    END IF;

    RETURN x;
END;
/
--(Player max salary)

BEGIN
  DBMS_OUTPUT.PUT_LINE(Max_Salary(0));
END;

--(Team principal max salary)

BEGIN
  DBMS_OUTPUT.PUT_LINE(Max_Salary(1));
END;


CREATE OR REPLACE PROCEDURE display_top_players IS
CURSOR top_players_cur IS
SELECT p.First_name || ' ' || NVL(p.Middle_name || ' ', '') || p.Last_name,
       t.Team_name,
       p.Season_point
FROM player p
JOIN team t ON p.Team_id = t.Team_id
ORDER BY p.Season_point DESC
FETCH FIRST 3 ROWS ONLY;

v_player_name VARCHAR2(150);
v_team_name VARCHAR2(50);
v_points NUMBER;
BEGIN
    OPEN top_players_cur;
    DBMS_OUTPUT.PUT_LINE('Top 3 Players are:');

    LOOP
        FETCH top_players_cur INTO v_player_name, v_team_name, v_points;
        EXIT WHEN top_players_cur%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Player: ' || v_player_name ||
            ', Team: ' || v_team_name ||
            ', Points: ' || v_points
        );
    END LOOP;

    CLOSE top_players_cur;
END;
/
--This uses a cursor
--to iterate over top 3 players sorted by performance.

BEGIN
  display_top_players;
END;

CREATE OR REPLACE TRIGGER update_season_points_player
AFTER INSERT ON standings
FOR EACH ROW
BEGIN
    UPDATE player
    SET season_point = season_point + :NEW.player_points
    WHERE FIA_SUPER_LICENSE_NO = :NEW.player_id;
END;
/

CREATE OR REPLACE TRIGGER update_season_points_team
AFTER INSERT ON standings
FOR EACH ROW
BEGIN
    UPDATE team
    SET season_points = season_points + :NEW.player_points
    WHERE team_id = (
        SELECT team_id FROM player
        WHERE FIA_SUPER_LICENSE_NO = :NEW.player_id
    );
END;
/
--These triggers automatically update player 
--and team points whenever a new race result is inserted.
-- This ensures data consistency without manual updates.

INSERT INTO standings (player_points, player_id, race_id)
VALUES (25, 8568, 999);

SELECT season_point FROM player WHERE FIA_SUPER_LICENSE_NO = 8568;

SELECT season_points FROM team 
WHERE team_id = (SELECT team_id FROM player WHERE FIA_SUPER_LICENSE_NO = 8568);


SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE(matchWon());
END;
/

