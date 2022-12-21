create table "clubs" (
	"id" int not null,
	"clubs" varchar(100) not null,
	constraint "pk_employees" primary key ("id")
	);

create table "positions" (
	"id" int not null,
	"positionsclubs" varchar(100) not null,
	constraint "pk_positions" primary key ("id")
	);

create table "squads" (
	"id" int not null,
	"squads" varchar(100) not null,
	constraint "pk_squads" primary key ("id")
	);

create table "all_players_info" (
	"id" int not null,
	"name" varchar(100) not null,
	"position_id" int not null,
	"position_2_id" int not null,
	"squad_id" int not null,
	"age" varchar(100) not null,
	"club_id" int not null,
	"birth_year" int not null,
	"matches_played" int not null,
	"starts" int not null,
	"minutes_played" int not null,
	constraint "pk_all_players_info" primary key ("id"),
	constraint "fk_position_id" foreign key ("position_id") references "positions" ("id"),
	constraint "fk_position_2_id" foreign key ("position_2_id") references "positions" ("id"),
	constraint "fk_squad_id" foreign key ("squad_id") references "squads" ("id"),
	constraint "fk_clubs_id" foreign key ("club_id") references "clubs" ("id")
);

create table "players_stats" (
	"id" int not null,
	"player_id" int not null,
	"goals" int not null,
	"assists" int not null,
	"non_penalty_goals" int not null,
	"pk_goals" int not null,
	"pk_attempts" int not null,
	"yellow_cards" int not null,
	"red_cards" int not null,
	constraint "pk_players_stats" primary key ("id"),
	constraint "fk_player_id" foreign key ("player_id") references "all_players_info" ("id")
);

create table "keepers_stats" (
	"id" int not null,
	"player_id" int not null,
	"goals_against" int not null,
	"shots_on_targets_against" int not null,
	"saves" int not null,
	"clean_sheets" int not null,
	"penalty_kick_attempts" int not null,
	"penalty_kicks_allowed" int not null,
	"penalty_kicks_saved" int not null,
	constraint "pk_keepers_stats" primary key ("id"),
	constraint "fk_keepers_player_id" foreign key ("player_id") references "all_players_info" ("id")
);

