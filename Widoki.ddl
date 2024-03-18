  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LINIE_LOT_SAM" ("KOD_ICAO", "KOD_IATA", "NAZWA", "KRAJ_POCHODZENIA", "MODEL_SAMOLOTU", "LICZBA_MIEJSC") AS 
  SELECT 
        kod_icao,
        kod_iata,
        nazwa,
        kraj_pochodzenia,
        model_samolotu,
        liczba_miejsc
    FROM 
        linie_lotnicze
    INNER JOIN samoloty on linia_kod_icao = kod_icao;

  CREATE OR REPLACE EDITIONABLE TRIGGER "NEW_LINIA_LOT" 
    INSTEAD OF INSERT ON LINIE_LOT_SAM
    FOR EACH ROW
DECLARE
    v_kod_icao varchar2(4);
BEGIN

    INSERT INTO linie_lotnicze(kod_icao, kod_iata, nazwa, kraj_pochodzenia)
    VALUES(:NEW.kod_icao, :NEW.kod_iata, :NEW.nazwa, :NEW.kraj_pochodzenia)
    RETURNING kod_icao INTO v_kod_icao;

    INSERT INTO samoloty(model_samolotu, liczba_miejsc, linia_kod_icao)
    VALUES(:NEW.model_samolotu, :NEW.liczba_miejsc, v_kod_icao);
END;
/
ALTER TRIGGER "NEW_LINIA_LOT" ENABLE;


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "LOTNISKA_KOORDYNATY" ("NAZWA", "LATITUDE", "LONGITUDE") AS 
  SELECT
    nazwa,
    TO_NUMBER(REGEXP_SUBSTR(polozenie_geo, '^\s*([0-9]+(\.[0-9]+)?)'), '999D9999') AS latitude,
    TO_NUMBER(REGEXP_SUBSTR(polozenie_geo, '([0-9]+(\.[0-9]+)?)\s*$'), '999D9999') AS longitude
FROM lotniska where polozenie_geo is not null;


