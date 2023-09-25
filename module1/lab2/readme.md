# Лабораторная работа 2. Создание онтологии в Protege

Целью этой лабораторной работы является знакомство со средой разработки онтологий Protege и перевод базы знаний, созданной в предыдущей лабораторной работе в онтологическую форму в Protege.

## Задание

Преобразовать факты и отношения из Prolog в концепты и свойства в онтологии. Описать классы и свойства в онтологии, которые соответствуют объектам и отношениям из базы знаний. Например, если у были классы "Человек" и "Машина" и свойство "возраст", создайте аналогичные классы и свойства в онтологии в Protege.

## Критерии оценки

- Корректное создание онтологии в Protege на основе базы знаний в Prolog.
- Качество перевода фактов, предикатов и отношений из Prolog в онтологию.
- Определение классов, свойств и иерархии классов в Protege.
- Тестирование онтологии и демонстрация ее функциональности.

## Тесты
MainCharacter

hasMainCharacter value Crewmember

hasMainCharacter min 1

VideoGame

hasGenre value Action-Adventure

hasMechanic value Open_world

hasAgeLimit value 18

VideoGame and not(hasAgeLimit value 18)

VideoGame and hasDescription min 1

hasAgeLimit only {18, 21}

hasAgeLimit only xsd:integer[ <= 18]

VideoGame or Genre

VideoGame and Genre

% Правило 1. Игра c высокой оценкой, если её рейтинг выше 8.5.
VideoGame and hasRating only xsd:float[ >= 8.5]


% Правило 2. Список всех видеоигр.
VideoGame


% Правило 3. Игра является "старой", если она была выпущена до 2010 года.
VideoGame and not (hasReleaseYear only xsd:int[ >= 2010])


% Правило 5. Игра X поддерживает определенный тип игры Y.
VideoGame and hasType value Single_player


% Правило 6. Получить список всех высоко оцененных игр
VideoGame and hasRating only xsd:float[ >= 8.5]


% Правило 7. Получить список игр определенного жанра.
VideoGame and hasGenre value RPG


% Правило 8. Список игр, рекомендуемых для взрослых (18+).
hasAgeLimit only xsd:integer[ >= 18]


% Правило 9. Список игр, которые считаются "классикой". "Классические игры" - это те, которые были выпущены более 20 лет назад и имеют высокий рейтинг.
VideoGame and (hasRating only xsd:float[ >= 8.5]) and (hasReleaseYear only xsd:int[ <= 2003])

VideoGame and hasType min 2

## Вывод
В результате работы я создала онтологию в Protege на основе базы знаний в Prolog путём отображения фактов, предикатов и отношений из Prolog в онтологию. Также я выполнил запросы в онтологию для обнаружения скрытых фактов.
