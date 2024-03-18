-- dane do tabeli LOTNISKA
INSERT INTO lotniska VALUES ('EPGD', 'GDN', 'Port Lotniczy im. Lecha Wałęsy', 'Gdańsk', 'Polska', '54.3776, 18.4662', 'UTC+01:00');
INSERT INTO lotniska VALUES ('EPWA', 'WAW', 'Lotnisko Chopina w Warszawie', 'Warszawa', 'Polska', '52.1657, 20.9671', 'UTC+01:00');
INSERT INTO lotniska VALUES ('EPKK', 'KRK', 'Port Lotniczy im. Jana Pawła II', 'Kraków', 'Polska', '50.0778, 19.7856', 'UTC+01:00');
INSERT INTO lotniska VALUES ('EPBY', 'BZG', 'Port Lotniczy im. Ignacego Paderewskiego', 'Bydgoszcz', 'Polska', '53.0967, 17.9775', 'UTC+01:00');
INSERT INTO lotniska VALUES ('EPLL', 'LCJ', 'Port Lotniczy im. Stanisława Skarżyńskiego', 'Łódź', 'Polska', '51.7219, 19.3989', 'UTC+01:00');

--personel
INSERT INTO personel VALUES ('12345678901', 'Anna', 'Kowalska', 'BAGAŻOWY', TO_DATE('1980-05-15', 'YYYY-MM-DD'), 'EPGD');
INSERT INTO personel VALUES ('23456789012', 'Jan', 'Nowak', 'OCHRONIARZ', TO_DATE('1975-10-22', 'YYYY-MM-DD'), 'EPGD');
INSERT INTO personel VALUES ('34567890123', 'Marta', 'Wiśniewska', 'KASJER', TO_DATE('1988-02-08', 'YYYY-MM-DD'), 'EPGD');
INSERT INTO personel VALUES ('45678901234', 'Piotr', 'Jankowski', 'STRAŻ GRANICZNA', TO_DATE('1983-07-31', 'YYYY-MM-DD'), 'EPGD');

INSERT INTO personel VALUES ('56789012345', 'Aleksandra', 'Nowakowska', 'OCHRONIARZ', TO_DATE('1979-12-18', 'YYYY-MM-DD'), 'EPWA');
INSERT INTO personel VALUES ('67890123456', 'Tomasz', 'Lis', 'BAGAŻOWY', TO_DATE('1985-08-03', 'YYYY-MM-DD'), 'EPWA');
INSERT INTO personel VALUES ('78901234567', 'Magdalena', 'Kozłowska', 'KASJER', TO_DATE('1982-04-27', 'YYYY-MM-DD'), 'EPWA');
INSERT INTO personel VALUES ('89012345678', 'Łukasz', 'Piotrowski', 'STRAŻ GRANICZNA', TO_DATE('1977-01-14', 'YYYY-MM-DD'), 'EPWA');

INSERT INTO personel VALUES ('90123456789', 'Katarzyna', 'Dąbrowska', 'KASJER', TO_DATE('1984-06-09', 'YYYY-MM-DD'), 'EPKK');
INSERT INTO personel VALUES ('72345078901', 'Grzegorz', 'Zieliński', 'STRAŻ GRANICZNA', TO_DATE('1981-11-25', 'YYYY-MM-DD'), 'EPKK');
INSERT INTO personel VALUES ('20456789012', 'Monika', 'Szymańska', 'BAGAŻOWY', TO_DATE('1976-03-12', 'YYYY-MM-DD'), 'EPKK');
INSERT INTO personel VALUES ('34067890123', 'Adam', 'Wójcik', 'OCHRONIARZ', TO_DATE('1989-09-04', 'YYYY-MM-DD'), 'EPKK');

INSERT INTO personel VALUES ('45078901234', 'Ewa', 'Lewandowska', 'KASJER', TO_DATE('1980-07-17', 'YYYY-MM-DD'), 'EPBY');
INSERT INTO personel VALUES ('56789010345', 'Marcin', 'Duda', 'BAGAŻOWY', TO_DATE('1985-01-30', 'YYYY-MM-DD'), 'EPBY');
INSERT INTO personel VALUES ('67090123456', 'Natalia', 'Kamińska', 'OCHRONIARZ', TO_DATE('1983-05-23', 'YYYY-MM-DD'), 'EPBY');
INSERT INTO personel VALUES ('78901234067', 'Łukasz', 'Szewczyk', 'STRAŻ GRANICZNA', TO_DATE('1978-12-11', 'YYYY-MM-DD'), 'EPBY');

INSERT INTO personel VALUES ('80012345678', 'Alicja', 'Pawlak', 'OCHRONIARZ', TO_DATE('1987-04-14', 'YYYY-MM-DD'), 'EPLL');
INSERT INTO personel VALUES ('90123450789', 'Paweł', 'Kowalczyk', 'STRAŻ GRANICZNA', TO_DATE('1982-10-27', 'YYYY-MM-DD'), 'EPLL');
INSERT INTO personel VALUES ('12340678901', 'Iwona', 'Zając', 'BAGAŻOWY', TO_DATE('1977-06-20', 'YYYY-MM-DD'), 'EPLL');
INSERT INTO personel VALUES ('23456709012', 'Kamil', 'Olejnik', 'KASJER', TO_DATE('1989-02-03', 'YYYY-MM-DD'), 'EPLL');

--terminale
INSERT INTO terminale VALUES ('Terminal 1', 'TAK', 'TAK', 'EPGD');
INSERT INTO terminale VALUES ('Terminal 2', 'TAK', 'NIE', 'EPGD');

INSERT INTO terminale VALUES ('Terminal 1', 'TAK', 'TAK', 'EPWA');
INSERT INTO terminale VALUES ('Terminal 2', 'NIE', 'TAK', 'EPWA');

INSERT INTO terminale VALUES ('Terminal 1', 'TAK', 'TAK', 'EPKK');
INSERT INTO terminale VALUES ('Terminal 2', 'NIE', 'TAK', 'EPKK');

INSERT INTO terminale VALUES ('Terminal 1', 'TAK', 'NIE', 'EPBY');
INSERT INTO terminale VALUES ('Terminal 2', 'NIE', 'TAK', 'EPBY');

INSERT INTO terminale VALUES ('Terminal 1', 'NIE', 'TAK', 'EPLL');
INSERT INTO terminale VALUES ('Terminal 2', 'NIE', 'NIE', 'EPLL');

-- bramy
INSERT INTO bramy VALUES ('wolna', 'EPGD', 'Terminal 1');
INSERT INTO bramy VALUES ('wolna', 'EPGD', 'Terminal 1');

INSERT INTO bramy VALUES ('zajęta', 'EPGD', 'Terminal 2');
INSERT INTO bramy VALUES ('wolna', 'EPGD', 'Terminal 2');

INSERT INTO bramy VALUES ('wolna', 'EPWA', 'Terminal 1');
INSERT INTO bramy VALUES ('zajęta', 'EPWA', 'Terminal 1');

INSERT INTO bramy VALUES ('wolna', 'EPWA', 'Terminal 2');
INSERT INTO bramy VALUES ('zajęta', 'EPWA', 'Terminal 2');

INSERT INTO bramy VALUES ('wolna', 'EPKK', 'Terminal 1');
INSERT INTO bramy VALUES ('zajęta', 'EPKK', 'Terminal 1');

INSERT INTO bramy VALUES ('wolna', 'EPKK', 'Terminal 2');
INSERT INTO bramy VALUES ('wolna', 'EPKK', 'Terminal 2');

INSERT INTO bramy VALUES ('wolna', 'EPBY', 'Terminal 1');
INSERT INTO bramy VALUES ('wolna', 'EPBY', 'Terminal 1');

INSERT INTO bramy VALUES ('zajęta', 'EPBY', 'Terminal 2');
INSERT INTO bramy VALUES ('wolna', 'EPBY', 'Terminal 2');

INSERT INTO bramy VALUES ('zajęta', 'EPLL', 'Terminal 1');
INSERT INTO bramy VALUES ('wolna', 'EPLL', 'Terminal 1');

INSERT INTO bramy VALUES ('wolna', 'EPLL', 'Terminal 2');
INSERT INTO bramy VALUES ('zajęta', 'EPLL', 'Terminal 2');

-- linie lotnicze
INSERT INTO linie_lotnicze VALUES ('LOT1', 'LO1', 'LOT Polish Airlines', 'Polska');
INSERT INTO linie_lotnicze VALUES ('LH1', 'LH', 'Lufthansa', 'Niemcy');
INSERT INTO linie_lotnicze VALUES ('BA1', 'BA', 'British Airways', 'Wielka Brytania');
INSERT INTO linie_lotnicze VALUES ('AF1', 'AF', 'Air France', 'Francja');
INSERT INTO linie_lotnicze VALUES ('EK1', 'EK', 'Emirates', 'Zjednoczone Emiraty Arabskie');

--samoloty

INSERT INTO samoloty VALUES ('Boeing 737', 150, 'LOT1');
INSERT INTO samoloty VALUES ('Boeing 787 Dreamliner', 250, 'LOT1');
INSERT INTO samoloty VALUES ('Embraer E170', 80, 'LOT1');
INSERT INTO samoloty VALUES ('Bombardier Q400', 70, 'LOT1');

INSERT INTO samoloty VALUES ('Airbus A320', 180, 'LH1');
INSERT INTO samoloty VALUES ('Airbus A340', 300, 'LH1');
INSERT INTO samoloty VALUES ('Boeing 747', 400, 'LH1');
INSERT INTO samoloty VALUES ('Bombardier CRJ900', 90, 'LH1');

INSERT INTO samoloty VALUES ('Airbus A380', 550, 'BA1');
INSERT INTO samoloty VALUES ('Boeing 777', 350, 'BA1');
INSERT INTO samoloty VALUES ('Embraer E190', 100, 'BA1');
INSERT INTO samoloty VALUES ('Airbus A321', 220, 'BA1');

INSERT INTO samoloty VALUES ('Airbus A350', 440, 'AF1');
INSERT INTO samoloty VALUES ('Boeing 737 MAX', 200, 'AF1');
INSERT INTO samoloty VALUES ('Airbus A330', 290, 'AF1');
INSERT INTO samoloty VALUES ('Embraer E195', 110, 'AF1');

INSERT INTO samoloty VALUES ('Boeing 777X', 600, 'EK1');
INSERT INTO samoloty VALUES ('Airbus A380', 520, 'EK1');
INSERT INTO samoloty VALUES ('Boeing 787-9', 290, 'EK1');
INSERT INTO samoloty VALUES ('Boeing 737 MAX 8', 170, 'EK1');

--pasażerowie
INSERT INTO pasazerowie VALUES ('85061512345', 'Anna', 'Kowalska', TO_DATE('1985-06-15', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'AB123456');
INSERT INTO pasazerowie VALUES ('90031023456', 'Jan', 'Nowak', TO_DATE('1990-03-10', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'CD789012');
INSERT INTO pasazerowie VALUES ('81052534567', 'Marta', 'Wiśniewska', TO_DATE('1981-05-25', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'EF345678');
INSERT INTO pasazerowie VALUES ('95072045678', 'Piotr', 'Jankowski', TO_DATE('1995-07-20', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'GH901234');
INSERT INTO pasazerowie VALUES ('88021256789', 'Aleksandra', 'Nowakowska', TO_DATE('1988-02-12', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'IJ567890');
INSERT INTO pasazerowie VALUES ('87082767890', 'Tomasz', 'Lis', TO_DATE('1987-08-27', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'KL234567');
INSERT INTO pasazerowie VALUES ('92052078901', 'Magdalena', 'Kozłowska', TO_DATE('1992-05-20', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'MN890123');
INSERT INTO pasazerowie VALUES ('81013189012', 'Łukasz', 'Piotrowski', TO_DATE('1981-01-31', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'OP456789');
INSERT INTO pasazerowie VALUES ('90070690123', 'Katarzyna', 'Dąbrowska', TO_DATE('1990-07-06', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'QR012345');
INSERT INTO pasazerowie VALUES ('75021401234', 'Grzegorz', 'Zieliński', TO_DATE('1975-02-14', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'ST678901');
INSERT INTO pasazerowie VALUES ('83032312345', 'Monika', 'Szymańska', TO_DATE('1983-03-23', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'UV234567');
INSERT INTO pasazerowie VALUES ('90090423456', 'Adam', 'Wójcik', TO_DATE('1990-09-04', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'WX890123');
INSERT INTO pasazerowie VALUES ('82071734567', 'Ewa', 'Lewandowska', TO_DATE('1982-07-17', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'YZ012345');
INSERT INTO pasazerowie VALUES ('85013045678', 'Marcin', 'Duda', TO_DATE('1985-01-30', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'AB678901');
INSERT INTO pasazerowie VALUES ('76052356789', 'Natalia', 'Kamińska', TO_DATE('1976-05-23', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'CD234567');
INSERT INTO pasazerowie VALUES ('78121167890', 'Łukasz', 'Szewczyk', TO_DATE('1978-12-11', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'EF890123');
INSERT INTO pasazerowie VALUES ('87041478901', 'Alicja', 'Pawlak', TO_DATE('1987-04-14', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'GH012345');
INSERT INTO pasazerowie VALUES ('82102789012', 'Paweł', 'Kowalczyk', TO_DATE('1982-10-27', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'IJ678901');
INSERT INTO pasazerowie VALUES ('77062090123', 'Iwona', 'Zając', TO_DATE('1977-06-20', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'KL234567');
INSERT INTO pasazerowie VALUES ('89020301234', 'Kamil', 'Olejnik', TO_DATE('1989-02-03', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'MN890123');
INSERT INTO pasazerowie VALUES ('87121312345', 'Agnieszka', 'Kowal', TO_DATE('1987-12-13', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'OP456789');
INSERT INTO pasazerowie VALUES ('80052723456', 'Robert', 'Zieliński', TO_DATE('1980-05-27', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'QR012345');
INSERT INTO pasazerowie VALUES ('92121034567', 'Kamila', 'Wójcik', TO_DATE('1992-12-10', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'ST678901');
INSERT INTO pasazerowie VALUES ('76081045678', 'Artur', 'Nowak', TO_DATE('1976-08-10', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'UV234567');
INSERT INTO pasazerowie VALUES ('84051256789', 'Karolina', 'Lis', TO_DATE('1984-05-12', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'WX890123');
INSERT INTO pasazerowie VALUES ('91061167890', 'Rafał', 'Szymański', TO_DATE('1991-06-11', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'YZ012345');
INSERT INTO pasazerowie VALUES ('88070778901', 'Aneta', 'Kowalska', TO_DATE('1988-07-07', 'YYYY-MM-DD'), 'Kobieta', 'Polska', 'AB678901');
INSERT INTO pasazerowie VALUES ('80090389012', 'Damian', 'Nowak', TO_DATE('1980-09-03', 'YYYY-MM-DD'), 'Mężczyzna', 'Polska', 'CD234567');

--bagaże
INSERT INTO bagaze VALUES (15, 'Czeka na załadunek', 'Bagaż podręczny', '85061512345');
INSERT INTO bagaze VALUES (20, 'Czeka na załadunek', 'Walizka średnia', '90031023456');
INSERT INTO bagaze VALUES (10, 'Czeka na załadunek', 'Plecak', '81052534567');
INSERT INTO bagaze VALUES (25, 'Czeka na załadunek', 'Duża walizka', '95072045678');
INSERT INTO bagaze VALUES (12, 'Czeka na załadunek', 'Torba sportowa', '88021256789');
INSERT INTO bagaze VALUES (18, 'Czeka na załadunek', 'Walizka kabinowa', '87082767890');
INSERT INTO bagaze VALUES (22, 'Czeka na załadunek', 'Plecak podręczny', '92052078901');
INSERT INTO bagaze VALUES (30, 'Czeka na załadunek', 'Duża torba', '81013189012');
INSERT INTO bagaze VALUES (14, 'Czeka na załadunek', 'Mała torba', '90070690123');
INSERT INTO bagaze VALUES (16, 'Czeka na załadunek', 'Walizka kabinowa', '75021401234');
INSERT INTO bagaze VALUES (19, 'Czeka na załadunek', 'Walizka średnia', '83032312345');
INSERT INTO bagaze VALUES (27, 'Czeka na załadunek', 'Duży plecak', '90090423456');
INSERT INTO bagaze VALUES (8, 'Czeka na załadunek', 'Torba na laptopa', '82071734567');
INSERT INTO bagaze VALUES (23, 'Czeka na załadunek', 'Walizka kabinowa', '85013045678');
INSERT INTO bagaze VALUES (11, 'Czeka na załadunek', 'Plecak sportowy', '76052356789');
INSERT INTO bagaze VALUES (17, 'Czeka na załadunek', 'Torba podręczna', '78121167890');
INSERT INTO bagaze VALUES (21, 'Czeka na załadunek', 'Walizka kabinowa', '87041478901');
INSERT INTO bagaze VALUES (13, 'Czeka na załadunek', 'Torba na ramię', '82102789012');
INSERT INTO bagaze VALUES (29, 'Czeka na załadunek', 'Duża walizka', '77062090123');
INSERT INTO bagaze VALUES (26, 'Czeka na załadunek', 'Torba do ręki', '89020301234');
INSERT INTO bagaze VALUES (9, 'Czeka na załadunek', 'Plecak podróżny', '87121312345');
INSERT INTO bagaze VALUES (28, 'Czeka na załadunek', 'Duża torba', '80052723456');
INSERT INTO bagaze VALUES (15, 'Czeka na załadunek', 'Plecak na kółkach', '92121034567');
INSERT INTO bagaze VALUES (22, 'Czeka na załadunek', 'Walizka średnia', '76081045678');
INSERT INTO bagaze VALUES (14, 'Czeka na załadunek', 'Torba podręczna', '84051256789');
INSERT INTO bagaze VALUES (24, 'Czeka na załadunek', 'Duży plecak', '91061167890');
INSERT INTO bagaze VALUES (20, 'Czeka na załadunek', 'Walizka kabinowa', '88070778901');
INSERT INTO bagaze VALUES (16, 'Czeka na załadunek', 'Plecak na ramię', '80090389012');
INSERT INTO bagaze VALUES (18, 'Czeka na załadunek', 'Torba do ręki', '91061167890');
INSERT INTO bagaze VALUES (25, 'Czeka na załadunek', 'Duża torba', '84051256789');
INSERT INTO bagaze VALUES (23, 'Czeka na załadunek', 'Walizka duża', '85061512345');
INSERT INTO bagaze VALUES (17, 'Czeka na załadunek', 'Duża torba podróżna', '90031023456');
INSERT INTO bagaze VALUES (12, 'Czeka na załadunek', 'Torba sportowa', '81052534567');
INSERT INTO bagaze VALUES (28, 'Czeka na załadunek', 'Duża walizka', '95072045678');
INSERT INTO bagaze VALUES (14, 'Czeka na załadunek', 'Torba na ramię', '88021256789');
INSERT INTO bagaze VALUES (19, 'Czeka na załadunek', 'Walizka kabinowa', '87082767890');
INSERT INTO bagaze VALUES (21, 'Czeka na załadunek', 'Duży plecak', '92052078901');
INSERT INTO bagaze VALUES (26, 'Czeka na załadunek', 'Walizka kabinowa', '81013189012');
INSERT INTO bagaze VALUES (13, 'Czeka na załadunek', 'Torba na ramię', '90070690123');
INSERT INTO bagaze VALUES (15, 'Czeka na załadunek', 'Walizka kabinowa', '75021401234');

--loty
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('LO001', TO_TIMESTAMP('2023-01-15 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-01-15 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'LOT1', 'EPGD', 'Terminal 1', 1, 'EPWA', 'Terminal 2', 2);
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('LH123', TO_TIMESTAMP('2023-02-20 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-02-20 13:45:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'LH1', 'EPGD', 'Terminal 2', 1, 'EPLL', 'Terminal 1', 1);
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('BA456', TO_TIMESTAMP('2023-03-10 15:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-03-10 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 'BA1', 'EPWA', 'Terminal 1', 2, 'EPBY', 'Terminal 1', 1);
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('AF789', TO_TIMESTAMP('2023-04-05 06:20:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-05 10:10:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 'AF1', 'EPKK', 'Terminal 1', 2, 'EPLL', 'Terminal 1', 2);
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('EK101', TO_TIMESTAMP('2023-05-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-05-13 02:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'EK1', 'EPKK', 'Terminal 2', 2, 'EPWA', 'Terminal 1', 1);
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('LO002', TO_TIMESTAMP('2023-06-18 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-06-18 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'LOT1', 'EPWA', 'Terminal 1', 2, 'EPLL', 'Terminal 2', 2);
INSERT INTO loty(kod_lotu,data_godzina_wylotu,data_godzina_przylotu,samoloty_id_sam,linia_kod_icao,lotnisko_wylotu,terminal_wylotu,brama_wylotu,lotnisko_przylotu,terminal_przylotu,brama_przylotu)
 VALUES ('LH124', TO_TIMESTAMP('2023-07-25 07:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-07-25 12:40:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'LH1', 'EPGD', 'Terminal 1', 1, 'EPKK', 'Terminal 1', 1);

--rezerwacje
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 1, '85061512345');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 2, '90031023456');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 3, '81052534567');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'nieważna', 4, '95072045678');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 5, '88021256789');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'nieważna', 6, '87082767890');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 7, '92052078901');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'nieważna', 1, '81013189012');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 2, '90070690123');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'nieważna', 3, '75021401234');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 4, '85061512345');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 5, '81052534567');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'nieważna', 6, '90031023456');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'ważna', 7, '75021401234');
INSERT INTO rezerwacje VALUES (SYSTIMESTAMP, 'nieważna', 1, '92052078901');