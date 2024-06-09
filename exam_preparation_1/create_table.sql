CREATE TABLE towns (
    id SERIAL PRIMARY KEY UNIQUE NOT NULL,
    name VARCHAR(45) NOT NULL
)
;

CREATE TABLE stadiums (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(45) NOT NULL,
    capacity INTEGER NOT NULL,
    town_id INT NOT NULL,
    CONSTRAINT stadiums_town_id_fk
        FOREIGN KEY (town_id)
            REFERENCES towns(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE ,

    CONSTRAINT capacity_greater_than_zero_stadiums
        CHECK ( capacity > 0 )
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(45) NOT NULL,
    established DATE NOT NULL,
    fan_base INT NOT NULL DEFAULT 0,
    stadium_id INT NOT NULL ,
    CONSTRAINT teams_stadium_id_fk
        FOREIGN KEY (stadium_id)
            REFERENCES stadiums(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE ,

    CONSTRAINT fan_base_greater_than_zero_teams
        CHECK ( fan_base >= 0 )
);

CREATE TABLE coaches (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL DEFAULT 0,
    coach_level INT NOT NULL DEFAULT 0,
    CONSTRAINT salary_coach_level_greater_than_zero
        CHECK ( salary >= 0 ),
        CHECK ( coach_level >= 0 )
);

CREATE TABLE skills_data (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    dribbling INT DEFAULT 0,
    pace INT DEFAULT 0,
    passing INT DEFAULT 0,
    shooting INT DEFAULT 0,
    speed INT DEFAULT 0,
    strength INT DEFAULT 0,
    CONSTRAINT all_greater_than_zero
        CHECK ( dribbling >= 0 ),
        CHECK ( pace >= 0 ),
        CHECK ( passing >= 0 ),
        CHECK ( shooting >= 0 ),
        CHECK ( speed >= 0 ),
        CHECK ( strength >= 0 )
)
;

CREATE TABLE players (
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    first_name VARCHAR(10) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    age INT NOT NULL DEFAULT 0,
    position CHAR(1) NOT NULL,
    salary NUMERIC(10, 2) NOT NULL DEFAULT 0,
    hire_date TIMESTAMP,
    skills_data_id INT NOT NULL,
    team_id INT,
    CONSTRAINT players_skills_data_id_fk
        FOREIGN KEY (skills_data_id)
            REFERENCES skills_data(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE ,

    CONSTRAINT players_team_id_fk
        FOREIGN KEY (team_id)
            REFERENCES teams(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE ,

    CONSTRAINT values_greater_than_zero
        CHECK ( age >= 0 ),
        CHECK ( salary >= 0 )

)
;

CREATE TABLE players_coaches (
    player_id INT,
    coach_id INT,

    CONSTRAINT players_coaches_player_coach_id_pk
        PRIMARY KEY (player_id, coach_id),

    CONSTRAINT players_coaches_player_id_fk
        FOREIGN KEY (player_id)
            REFERENCES players(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE ,

    CONSTRAINT players_coaches_coach_id_fk
        FOREIGN KEY (coach_id)
            REFERENCES coaches(id)
            ON DELETE CASCADE
            ON UPDATE CASCADE
);

