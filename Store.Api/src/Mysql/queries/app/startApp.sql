SET NAMES 'utf8';
SELECT version FROM options;
SET lc_time_names = "ar_EG";
SELECT * FROM options;
SELECT id, title, pass FROM users WHERE active = 1 ORDER BY sn ;
