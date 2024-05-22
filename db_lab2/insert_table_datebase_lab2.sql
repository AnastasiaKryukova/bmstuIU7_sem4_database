INSERT INTO public."Courses"(
	course_name, description)
	VALUES ('Первый','бакалавр\магистр\специалист'),
	('Второй','бакалавр\магистр\специалист'),
	('Третий','бакалавр\специалист'),
	('Четвертый','бакалавр\специалист'),
	('Пятый','специалист'),
	('Шестой','специалист');

INSERT INTO public."Specialties"(
	specialty_name,description,id_department)
	VALUES ('Стрелково-пушечное, артиллерийское и ракетное оружие', 'СМ6', 1),
	('Боеприпасы и взрыватели', 'СМ4', 2),
	('Проектирование авиационных и ракетных двигателей', 'Э1', 3),
	('Судебная компьютерная экспертиза', 'ЮР', 4);

INSERT INTO public."Professors"(
	first_name, last_name, email, id_department, id_specialty)
	VALUES ('Виктор',' Жуков','vikzuk@gmail.com',2,6),
	('Анна-Мария','Соколова','anmasok@gmail.com',1,5),
	('Валерия','Петрушева','valpetr@gmail.com',3,7),
	('Ольга','Мартынова','olgmart@gmail.com',3,7),
	('Михаил','Тополев','michtop@gmail.com',4,8);

INSERT INTO public."Enrollments"(
	id_student,id_course,id_grade,id_department,enrollment_date)
	VALUES (1,2,3,1,'2009-08-31'),
	(3,1,3,3,'2009-08-31');

