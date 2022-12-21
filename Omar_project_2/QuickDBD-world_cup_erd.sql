-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/08AmKa
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Conceptual (without relationships)

CREATE TABLE "all_players_main" (
    "id" serial   NOT NULL,
    "name" varchar(100)   NOT NULL,
    "position_id" int   NOT NULL,
    "position_2_id" int   NOT NULL,
    "squad_id" int   NOT NULL,
    "age" int   NOT NULL,
    "club_id" int   NOT NULL,
    "birth_year" int   NOT NULL,
    "matches_played" int   NOT NULL,
    "starts" int   NOT NULL,
    "minutes_played" int   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_all_players_main" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "clubs" (
    "id" serial   NOT NULL,
    "clubs" varchar(50)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_clubs" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "positions" (
    "id" serial   NOT NULL,
    "positions" varchar(10)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_positions" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "squads" (
    "id" serial   NOT NULL,
    "squads" varchar(50)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_squads" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "players_stats" (
    "id" serial   NOT NULL,
    "player_id" int   NOT NULL,
    "goals" int   NOT NULL,
    "assists" int   NOT NULL,
    "non_penalty_goals" int   NOT NULL,
    "pk_goals" int   NOT NULL,
    "pk_attemps" int   NOT NULL,
    "yellow_cards" int   NOT NULL,
    "red_cards" int   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_players_stats" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "keepers_stats" (
    "id" serial   NOT NULL,
    "player_id" int   NOT NULL,
    "goals_against" int   NOT NULL,
    "shots_on_target_against" int   NOT NULL,
    "saves" int   NOT NULL,
    "clean_sheets" int   NOT NULL,
    "penalty_kicks_attempted" int   NOT NULL,
    "penalty_kicks_allowed" int   NOT NULL,
    "penalty_kicks_saved" int   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_keepers_stats" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "all_players_main" ADD CONSTRAINT "fk_all_players_main_position_id" FOREIGN KEY("position_id")
REFERENCES "positions" ("id");

ALTER TABLE "all_players_main" ADD CONSTRAINT "fk_all_players_main_position_2_id" FOREIGN KEY("position_2_id")
REFERENCES "positions" ("id");

ALTER TABLE "all_players_main" ADD CONSTRAINT "fk_all_players_main_squad_id" FOREIGN KEY("squad_id")
REFERENCES "squads" ("id");

ALTER TABLE "all_players_main" ADD CONSTRAINT "fk_all_players_main_club_id" FOREIGN KEY("club_id")
REFERENCES "clubs" ("id");

ALTER TABLE "players_stats" ADD CONSTRAINT "fk_players_stats_player_id" FOREIGN KEY("player_id")
REFERENCES "all_players_main" ("id");

ALTER TABLE "keepers_stats" ADD CONSTRAINT "fk_keepers_stats_player_id" FOREIGN KEY("player_id")
REFERENCES "all_players_main" ("id");

