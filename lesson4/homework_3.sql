-- Выставим is_active в FALSE для несовершеннолетних
UPDATE profiles
SET is_active = FALSE 
WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday))/365.25) < 18;

-- Проверка
SELECT * FROM profiles WHERE FLOOR((TO_DAYS(NOW()) - TO_DAYS(birthday))/365.25) < 18;