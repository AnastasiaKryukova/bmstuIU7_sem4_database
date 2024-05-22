ALTER TABLE public."Courses"
    ALTER COLUMN course_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Courses"
    ALTER COLUMN course_name SET NOT NULL;

ALTER TABLE IF EXISTS public."Courses"
    ALTER COLUMN department_id SET NOT NULL;
ALTER TABLE IF EXISTS public."Courses"
    ADD PRIMARY KEY (course_id);    
    
ALTER TABLE IF EXISTS public."Courses"
    ALTER COLUMN course_id DROP DEFAULT;
ALTER TABLE IF EXISTS public."Courses"
    ADD PRIMARY KEY (course_id);

ALTER TABLE IF EXISTS public."Courses"
    ADD CONSTRAINT fk_courses_departments FOREIGN KEY (id_department)
    REFERENCES public."Departments" (department_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_courses_departments
    ON public."Courses"(id_department);
    
ALTER TABLE IF EXISTS public."Courses"
    ALTER COLUMN course_id ADD GENERATED ALWAYS AS IDENTITY;
    
ALTER TABLE IF EXISTS public."Courses"
    RENAME id_department TO description;

ALTER TABLE IF EXISTS public."Courses"
    ADD COLUMN description text;
