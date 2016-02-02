use master

CREATE Database MovieList

USE MovieList

CREATE TABLE Movie
(
	MovieKey int Identity(1,1) Primary Key,
	MovieTitle NVARCHAR(255) not null,
	MovieStudio NVARCHAR(255) null
)

CREATE TABLE Actor
(
	ActorKey int Identity(1,1) Primary Key,
	ActorName NVARCHAR(255) not null
)

CREATE TABLE Genre
(
	GenreKey int Identity(1,1) Primary Key, 
	GenreName NVARCHAR(255) not null
)

CREATE TABLE MovieActor
(
	ActorKey int,
	MovieKey int,
	Constraint PK_MovieActor Primary Key(ActorKey, MovieKey),
	Constraint FK_ActorKey Foreign Key(ActorKey) references Actor(ActorKey),
	Constraint FK_MovieKey Foreign Key(MovieKey) references Movie(MovieKey)
)

CREATE TABLE MovieGenre
(
	MovieGenre int not null,
	GenreKey int not null
)

    ADD a column called "MovieYear" to the Movie table. Give it a data type of Int
		ALTER TABLE Movie
		ADD MovieYear int

    ADD a column "ActorCountry" to Actor. Give it a data type of NVARCHAR(255)

		ALTER TABLE Actor
		ADD ActorCountry NVARCHAR(255)

    ADD check constraint to MOVIE. Set it so that the year must be between 1910 and 2050.

		Alter table Movie
		ADD Constraint chk_Movie check (MovieYear between 1910 and 2050)

    ADD a primary key constraint to MovieGenre which creates a composite primary key containing both MovieKey and GenreKey.

		ALTER TABLE MovieGenre
		ADD Constraint PK_MovieGenre Primary Key(GenreKey, MovieKey) 

   ADD a foreign key constraint to MovieGenre for MovieKey

		ALTER TABLE MovieGenre
		ADD Constraint FK_MovieGenre Foreign Key (MovieKey)

    ADD a foreign key constraint to MovieGenre for GenreKey

		ALTER TABLE MovieGenre
		ADD Constraint FK_MovieGenre Foreign Key(GenreKey)  
