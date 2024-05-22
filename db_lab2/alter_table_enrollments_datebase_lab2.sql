ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN id_student SET NOT NULL;

ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN id_course SET NOT NULL;

ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN id_grade SET NOT NULL;

ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN id_department SET NOT NULL;

ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN enrollment_date SET NOT NULL;
ALTER TABLE IF EXISTS public."Enrollments"
    ADD PRIMARY KEY (enrollment_id);

ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN enrollment_id DROP DEFAULT;
    
ALTER TABLE IF EXISTS public."Enrollments"
    ADD CONSTRAINT fk_enrollments_departments FOREIGN KEY (id_department)
    REFERENCES public."Departments" (department_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_enrollments_departments
    ON public."Enrollments"(id_department);
    
ALTER TABLE IF EXISTS public."Enrollments"
    ADD CONSTRAINT fk_enrollments_courses FOREIGN KEY (id_course)
    REFERENCES public."Courses" (course_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_enrollments_courses
    ON public."Enrollments"(id_course);
    
ALTER TABLE IF EXISTS public."Enrollments"
    ADD CONSTRAINT fk_enrollments_students FOREIGN KEY (id_student)
    REFERENCES public."Students" (student_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_enrollments_students
    ON public."Enrollments"(id_student);
    
ALTER TABLE IF EXISTS public."Enrollments"
    ADD CONSTRAINT fk_enrollments_grades FOREIGN KEY (id_grade)
    REFERENCES public."Grades" (grade_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_enrollments_grades
    ON public."Enrollments"(id_grade);
    
ALTER TABLE IF EXISTS public."Enrollments"
    ALTER COLUMN enrollment_id ADD GENERATED ALWAYS AS IDENTITY;
