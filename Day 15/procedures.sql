create database csk;

use csk;

create table players(player_id int,player_name varchar(30),player_country varchar(30),player_goal int);

desc players;

INSERT INTO players (player_id, player_name, player_country, player_goal)
VALUES
(1, 'Lionel Messi', 'Argentina', 850),
(2, 'Cristiano Ronaldo', 'Portugal', 930),
(3, 'prasad', 'Brazil', 450),
(4, 'shamir', 'France', 350),
(5, 'pratik', 'England', 300),
(6, 'tharun', 'Norway', 280),
(7, 'karthik', 'Egypt', 270),
(8, 'rohith', 'Poland', 650),
(9, 'teja', 'Croatia', 120),
(10, 'praveenu', 'Belgium', 110);

select *from players;

DROP PROCEDURE IF EXISTS GetAllPlayers;

DELIMITER //

CREATE PROCEDURE GetAllPlayers()
BEGIN
    SELECT * FROM players;
END //

DELIMITER ;

CALL GetAllPlayers();


DROP PROCEDURE IF EXISTS GetPlayerById;

DELIMITER //

CREATE PROCEDURE GetPlayerById(IN p_id INT)
BEGIN
    SELECT *
    FROM players
    WHERE player_id = p_id;
END //

DELIMITER ;

CALL GetPlayerById(5);

DROP PROCEDURE IF EXISTS GetPlayersByCountry;

DELIMITER //

CREATE PROCEDURE GetPlayersByCountry(IN p_country VARCHAR(30))
BEGIN
    SELECT *
    FROM players
    WHERE player_country = p_country;
END //

DELIMITER ;

CALL GetPlayersByCountry('Brazil');

DELIMITER //

CREATE PROCEDURE GetPlayersByGoals(IN p_goals INT)
BEGIN
    SELECT *
    FROM players
    WHERE player_goal > p_goals;
END //

DELIMITER ;

CALL GetPlayersByGoals(300);

set sql_safe_updates=0;
DROP PROCEDURE IF EXISTS update_player_football;
DELIMITER //

CREATE PROCEDURE update_player_football(IN p_goals INT)
BEGIN
    UPDATE players
    SET player_goal = p_goals
    WHERE player_name = 'prasad';
END //

DELIMITER ;

CALL update_player_football(1050);

SELECT * 
FROM players
WHERE player_name = 'prasad';


# OUT

delimiter //

create procedure player_count_country(in var varchar(30),out total_player int)
begin
select count(*) from players where player_country=var into total_player;
end //
delimiter ;

call player_count_country('Poland',@total_count);

select @total_count as player_count;

delimiter //

create procedure player_count_goals(in var int,out total_players int)
begin
select count(*) from players where player_goal=var into total_players;
end //
delimiter ;

call player_count_goals(1050,@total_counts);

select @total_counts as goal_counts;
