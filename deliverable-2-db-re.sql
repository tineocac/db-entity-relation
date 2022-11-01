CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "authors" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "categories_id" int,
  "title" varchar,
  "description" varchar,
  "authors_id" int,
  "content" varchar
);

CREATE TABLE "categories" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "users_id" int,
  "posts_id" int,
  "comment" varchar
);

ALTER TABLE "posts" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "posts" ADD FOREIGN KEY ("authors_id") REFERENCES "authors" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("posts_id") REFERENCES "posts" ("id");

ALTER TABLE "comments" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

insert into authors (name) values 
('Carlos Tineo'),
('Daniela Salazar'),
('Juan Romero');

select * from authors;

insert into categories (name) values 
('Home'),
('Technology'),
('Policy');

select * from categories c ;

insert into posts (categories_id, title, description, authors_id) values 
(1, 'Tips for cleaning your house', 'lorem', 1),
(2, 'New updates about React JS', 'lorem', 2),
(3, 'New president of Colombia', 'lorem', 3);

select * from posts p ;

insert into users (name, email, password, age) values 
('Julio', 'julio@gmail.com', 'julio1234', 18),
('Valentina', 'vale@gmail.com', 'vale4321', 24),
('William', 'wili@gmail.com', 'wili567', 35);

select * from users u ;

insert into comments (users_id, posts_id, comment ) values
(1, 1, 'Oh, thank you for shares thoses tips.'),
(2, 2, 'Wowww, I waited for long time for this moment, I love you React <3'),
(3, 3, 'Without comments .-.');

select * from comments ;
