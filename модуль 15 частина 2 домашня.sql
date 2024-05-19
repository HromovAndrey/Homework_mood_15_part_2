-- Створення бази даних
--CREATE DATABASE fruits_and_vegetables

-- Створення таблиці "fruits_vegetables"
-- CREATE TABLE fruits_vegetables (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(50),
--     type VARCHAR(10), -- 'fruit' або 'vegetable'
--     color VARCHAR(20),
--     calories INT,
--     description TEXT
-- )

-- Вставка даних про овочі та фрукти
-- INSERT INTO fruits_vegetables (name, type, color, calories, description)
-- VALUES
-- ('Яблуко', 'fruit', 'зелений', 52, 'Яблуко - це соковитий фрукт з солодким смаком.'),
-- ('Банан', 'fruit', 'жовтий', 89, 'Банан - це тропічний фрукт з солодким смаком.'),
-- ('Морква', 'vegetable', 'помаранчевий', 41, 'Морква - це коренеплід, який багатий на вітаміни.'),
-- ('Огірок', 'vegetable', 'зелений', 16, 'Огірок - це овоч, який має освіжаючий смак.'),
-- ('Полуниця', 'fruit', 'червоний', 32, 'Полуниця - це ягода з солодким смаком.'),
-- ('Буряк', 'vegetable', 'червоний', 43, 'Буряк - це коренеплід, який використовується у багатьох стравах.');

--Відображення усіх овочів з калорійністю, менше вказаної
-- SELECT * FROM fruits_vegetables
-- WHERE type = 'vegetable' AND calories < 50

--Відображення усіх фруктів з калорійністю у вказаному діапазоні
-- SELECT * FROM fruits_vegetables
-- WHERE type = 'fruit' AND calories BETWEEN 50 AND 100

--Відображення усіх овочів, у назві яких є вказане слово
-- SELECT * FROM fruits_vegetables
-- WHERE type = 'vegetable' AND name LIKE '%капуста%'

--Відображення усіх овочів та фруктів, у короткому описі яких є вказане слово
-- SELECT * FROM fruits_vegetables
-- WHERE description LIKE '%гемоглобін%'

--Показати усі овочі та фрукти жовтого або червоного кольору
-- SELECT * FROM fruits_vegetables
-- WHERE color IN ('жовтий', 'червоний')

--Завдання 2
--Показати кількість овочів
-- SELECT COUNT(*) AS vegetable_count
-- FROM fruits_vegetables
-- WHERE type = 'vegetable'

--Показати кількість фруктів
-- SELECT COUNT(*) AS fruit_count
-- FROM fruits_vegetables
-- WHERE type = 'fruit'

--Показати кількість овочів та фруктів заданого кольору
-- SELECT COUNT(*) AS color_count
-- FROM fruits_vegetables
-- WHERE color = 'зелений'

--Показати кількість овочів та фруктів кожного кольору
-- SELECT color, COUNT(*) AS count
-- FROM fruits_vegetables
-- GROUP BY color

--Показати колір мінімальної кількості овочів та фруктів
-- SELECT color
-- FROM fruits_vegetables
-- GROUP BY color
-- ORDER BY COUNT(*) ASC
-- LIMIT 1

--Показати колір максимальної кількості овочів та фруктів
-- SELECT color
-- FROM fruits_vegetables
-- GROUP BY color
-- ORDER BY COUNT(*) DESC
-- LIMIT 1

--Показати мінімальну калорійність овочів та фруктів
-- SELECT MIN(calories) AS min_calories
-- FROM fruits_vegetables

--Показати максимальну калорійність овочів та фруктів
-- SELECT MAX(calories) AS max_calories
-- FROM fruits_vegetables

--Показати середню калорійність овочів та фруктів
-- SELECT AVG(calories) AS avg_calories
-- FROM fruits_vegetables

--Показати фрукт з мінімальною калорійністю
-- SELECT * 
-- FROM fruits_vegetables
-- WHERE type = 'fruit'
-- ORDER BY calories ASC
-- LIMIT 1

--Показати фрукт з максимальною калорійністю
-- SELECT * 
-- FROM fruits_vegetables
-- WHERE type = 'fruit'
-- ORDER BY calories DESC
-- LIMIT 1





