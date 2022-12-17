-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/08AmKa
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Conceptual (without relationships)

CREATE TABLE "players" (
    "rk" int   NOT NULL,
    "player" varchar(100)   NOT NULL,
    "pos_id" int   NOT NULL,
    "team_id" int   NOT NULL,
    "age" int   NOT NULL,
    "club_id" int   NOT NULL,
    "mp" int   NOT NULL,
    "starts" int   NOT NULL,
    "min" int   NOT NULL,
    "gls" int   NOT NULL,
    "ast" int   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_players" PRIMARY KEY (
        "rk"
     )
);

CREATE TABLE "club" (
    "id" serial   NOT NULL,
    "club_name" varchar(100)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_club" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "position" (
    "id" serial   NOT NULL,
    "position" varchar(50)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_position" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "national_team" (
    "id" serial   NOT NULL,
    "national_team_name" varchar(100)   NOT NULL,
    "last_updated" timestamp   NOT NULL,
    CONSTRAINT "pk_national_team" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "players" ADD CONSTRAINT "fk_players_pos_id" FOREIGN KEY("pos_id")
REFERENCES "position" ("id");

ALTER TABLE "players" ADD CONSTRAINT "fk_players_team_id" FOREIGN KEY("team_id")
REFERENCES "national_team" ("id");

ALTER TABLE "players" ADD CONSTRAINT "fk_players_club_id" FOREIGN KEY("club_id")
REFERENCES "club" ("id");

