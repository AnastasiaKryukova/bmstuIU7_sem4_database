CREATE TABLE products
(
    product_id serial NOT NULL PRIMARY KEY,
    name character varying(128) NOT NULL,
    description text NOT NULL,
    color character varying(32) NOT NULL,
    size numeric(16) CHECK (size > 1) NOT NULL,
    weight numeric(50)
);

/*SELECT * FROM products;*/

CREATE TABLE reviews
(
    review_id serial NOT NULL PRIMARY KEY,
    id_product integer,
	FOREIGN KEY (id_product) REFERENCES products (product_id),
    description text,
    evaluation integer NOT NULL CHECK(evaluation >= 1 AND evaluation <= 5),
    number_phone integer NOT NULL,
    validation_code integer NOT NULL UNIQUE,
	ver_validation_code CHARACTER VARYING(5) default 'false',
	CHECK(ver_validation_code = 'true' OR ver_validation_code = 'false'),
    usefulness boolean
);

/*SELECT * FROM reviews;*/

CREATE TABLE answers_adms
(
    answer_adm_id serial NOT NULL PRIMARY KEY,
    description text NOT NULL    
);

/*SELECT * FROM answers_adms;*/

CREATE TABLE questions
(
    question_id serial NOT NULL PRIMARY KEY,
    description text NOT NULL,
    id_product integer,
	FOREIGN KEY (id_product) REFERENCES products (product_id),
    name character varying(50),
    email character varying(100),
    id_answer_adm integer UNIQUE,
	FOREIGN KEY (id_answer_adm) REFERENCES answers_adms (answer_adm_id),
	id_new_question_to_adm integer,
	FOREIGN KEY (id_new_question_to_adm) REFERENCES answers_adms (answer_adm_id)
);

/*SELECT * FROM questions;*/

/*CREATE TABLE new_questions_to_adms
(
    new_question_to_adm_id serial NOT NULL PRIMARY KEY,
    description text NOT NULL,	
);
*/

CREATE TABLE photos
(
	photo_id serial NOT NULL PRIMARY KEY,
    id_product integer,
	FOREIGN KEY (id_product) REFERENCES products (product_id),
	link character varying(300)	NOT NULL
);

CREATE TABLE videos
(
	video_id serial NOT NULL PRIMARY KEY,
    id_product integer,
	FOREIGN KEY (id_product) REFERENCES products (product_id),
	link character varying(300)	NOT NULL
);

/*SELECT * FROM photos;*/
/*SELECT * FROM videos;*/


CREATE DOMAIN categories_person_sex AS TEXT 
CHECK(
   VALUE ~ 'Женщины'
OR VALUE ~ 'Мужчины'
);

CREATE DOMAIN categories_person_age AS TEXT 
CHECK(
   VALUE ~ 'Взрослые'
OR VALUE ~ 'Дети'
);

CREATE DOMAIN categories_type_of_product AS TEXT 
CHECK(
   VALUE ~ 'Одежда'
OR VALUE ~ 'Обувь'
OR VALUE ~ 'Бельё'
OR VALUE ~ 'Аксессуары'
);

CREATE DOMAIN categories_products AS TEXT 
CHECK(
   VALUE ~ 'Куртки и ветровки'
OR VALUE ~ 'Толстовки и худи'
OR VALUE ~ 'Брюки'
OR VALUE ~ 'Шорты'
OR VALUE ~ 'Кроссовки и кеды'
OR VALUE ~ 'Ботинки и полуботинки'
OR VALUE ~ 'Шлёпанцы и сабо'
OR VALUE ~ 'Нижнее бельё'
OR VALUE ~ 'Термобельё'
OR VALUE ~ 'Носки'
OR VALUE ~ 'Головные уборы'
OR VALUE ~ 'Рюкзаки'
OR VALUE ~ 'Сумки'
);

CREATE DOMAIN categories_season AS TEXT 
CHECK(
   VALUE ~ 'Лето'
OR VALUE ~ 'Осень'
OR VALUE ~ 'Зима'
OR VALUE ~ 'Весна'
);

CREATE TABLE categories
(
    category_id serial NOT NULL PRIMARY KEY,
    id_product integer,
	FOREIGN KEY (id_product) REFERENCES products (product_id),
	sex categories_person_sex NOT NULL,
	age categories_person_age NOT NULL,
	type_of_product categories_type_of_product NOT NULL,
	product categories_products NOT NULL,
	season categories_season NOT NULL
);

/*SELECT * FROM categories;*/