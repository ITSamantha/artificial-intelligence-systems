:- discontiguous 
    videogame/1, genre/2, main_character/2, 
    rating/2, release_year/2, mechanic_type/3.

% Название видеоигр.
videogame('The Witcher 3: Wild Hunt').
videogame('Minecraft').
videogame('Overwatch').
videogame('Super Mario Bros').
videogame('League of Legends').
videogame('The Sims 3').

% Жанры видеоигр.
genre('The Witcher 3: Wild Hunt', 'RPG').
genre('Minecraft', 'Sandbox').
genre('Overwatch', 'Shooter').
genre('Super Mario Bros', 'Platformer').
genre('League of Legends', 'Moba').
genre('The Sims 3', 'Simulator').

% Главный персонаж.
main_character('The Witcher 3: Wild Hunt', 'Geralt of Rivia').
main_character('Minecraft', 'Steve').
main_character('Overwatch', 'Tracer').
main_character('Super Mario Bros', 'Mario').
main_character('League of Legends', 'Summoner').
main_character('The Sims 3', 'Empty').

% Рейтинг.
rating('The Witcher 3: Wild Hunt', 9.3).
rating('Minecraft', 9.1).
rating('Overwatch', 7.9).
rating('Super Mario Bros', 8.1).
rating('League of Legends', 8.7).
rating('The Sims 3', 10).

% Механика и тип.
mechanic('The Witcher 3: Wild Hunt', 'Open world', 'Single player').
mechanic('Minecraft', 'Crafting', 'Multiplayer').
mechanic('Overwatch', 'Team', 'Multiplayer').
mechanic('Super Mario Bros', 'Side Scrolling', 'Single player').
mechanic('League of Legends', 'Battle Arena', 'Multiplayer').
mechanic('The Sims 3', 'Open World', 'Single player').

% Факты о годе выпуска видеоигр.
release_year('The Witcher 3: Wild Hunt', 2015).
release_year('Minecraft', 2011).
release_year('Overwatch', 2016).
release_year('Super Mario Bros', 1985).
release_year('League of Legends', 2009).
release_year('The Sims 3', 2009).

% Правило 1. Игра c высокой оценкой, если её рейтинг выше 8.5.
well_rated(X) :-
   rating(X, Rating), Rating > 8.5.

% Правило 2. Список всех видеоигр.
list_of_video_games(Games) :- 
   findall(Game, videogame(Game), Games).

% Правило 3. Игра является "старой", если она была выпущена до 2010 года.
old_game(X) :-
   \+ release_year(X, Year), Year > 2010.

% Правило 4. Игра X принадлежит к определенному жанру Y.
belongs_to_genre(X, Y) :-
   genre(X, Y).

% Правило 5. Игра X поддерживает определенный тип игры Y.
supports_game_mode(X, Y) :-
   mechanic(X, _, Y).

% Правило 6. Получить список всех высоко оцененных игр
list_of_well_rated_games(WellRatedGames) :-
   findall(Game, well_rated(Game), WellRatedGames).