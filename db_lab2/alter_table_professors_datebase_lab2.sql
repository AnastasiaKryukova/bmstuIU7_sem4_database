ALTER TABLE public."Professors"
    ALTER COLUMN first_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE public."Professors"
    ALTER COLUMN last_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE public."Professors"
    ALTER COLUMN email TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN email SET NOT NULL;

ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN id_department SET NOT NULL;

ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN id_specialty SET NOT NULL;
ALTER TABLE IF EXISTS public."Professors"
    ADD PRIMARY KEY (professor_id);
    
ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN professor_id DROP DEFAULT;
    
ALTER TABLE IF EXISTS public."Professors"
    ADD CONSTRAINT fk_professors_departments FOREIGN KEY (id_department)
    REFERENCES public."Departments" (department_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_professors_departments
    ON public."Professors"(id_department);
    
ALTER TABLE IF EXISTS public."Professors"
    ADD CONSTRAINT fk_professors_specialties FOREIGN KEY (id_specialty)
    REFERENCES public."Specialties" (specialty_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_professors_specialties
    ON public."Professors"(id_specialty);
    
ALTER TABLE IF EXISTS public."Professors"
    ALTER COLUMN professor_id ADD GENERATED ALWAYS AS IDENTITY;
    
ALTER TABLE IF EXISTS public."Professors"
    ADD CONSTRAINT void_last_name CHECK (last_name != ' ')
    NOT VALID;
ALTER TABLE IF EXISTS public."Professors"
    ADD UNIQUE (email);
