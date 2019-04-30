DROP INDEX IF EXISTS make_code_index;

DROP INDEX IF EXISTS year_index;

CREATE INDEX make_code_index
ON car_models (make_code);

CREATE INDEX year_index
ON car_models (make_code);


SELECT make_title FROM car_models WHERE make_code = 'LAM'
GROUP BY make_title;


SELECT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R'
GROUP BY model_title;


SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM'; 


SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;


SELECT * FROM car_models WHERE year = 2010;
