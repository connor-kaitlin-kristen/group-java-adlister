USE hexlister_db;

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE ads;
TRUNCATE ad_category;

INSERT INTO ads (user_id, title, description) VALUES (20, 'Hut for Sale', 'Has two working chicken legs, runs fast!');
INSERT INTO ads (user_id, title, description) VALUES (10, 'Need more buttons', 'In search of buttons to use for eyes. Must be unsettling. Do not need to match.');
INSERT INTO ads (user_id, title, description) VALUES (18, 'Missing Smoke Baby', 'Answers to "Stannis." Definitely murderous.');
INSERT INTO ads (user_id, title, description) VALUES (19, 'Revenge Hex!', 'Got cursed with smallpox. Need advice, and also bat skulls.');
INSERT INTO ads (user_id, title, description) VALUES (7, 'Cat Familiar seeking Witch', 'In search of a new witch to serve. Must provide constant snacks and belly rubs.');


INSERT INTO ad_category (ad_id, category_id) VALUES (1, 7);
INSERT INTO ad_category (ad_id, category_id) VALUES (1, 8);
INSERT INTO ad_category (ad_id, category_id) VALUES (2, 10);
INSERT INTO ad_category (ad_id, category_id) VALUES (3, 1);
INSERT INTO ad_category (ad_id, category_id) VALUES (3, 9);
INSERT INTO ad_category (ad_id, category_id) VALUES (4, 1);
INSERT INTO ad_category (ad_id, category_id) VALUES (4, 3);
INSERT INTO ad_category (ad_id, category_id) VALUES (5, 4);

SET FOREIGN_KEY_CHECKS=1;

