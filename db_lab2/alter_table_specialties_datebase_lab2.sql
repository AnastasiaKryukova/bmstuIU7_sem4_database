ALTER TABLE public."Specialties"
    ALTER COLUMN specialty_name TYPE character varying(100) COLLATE pg_catalog."default";
ALTER TABLE IF EXISTS public."Specialties"
    ALTER COLUMN specialty_name SET NOT NULL;

ALTER TABLE IF EXISTS public."Specialties"
    ALTER COLUMN id_department SET NOT NULL;
ALTER TABLE IF EXISTS public."Specialties"
    ADD PRIMARY KEY (specialty_id);

ALTER TABLE IF EXISTS public."Specialties"
    ALTER COLUMN specialty_id DROP DEFAULT;
    
ALTER TABLE IF EXISTS public."Specialties"
    ALTER COLUMN id_department DROP NOT NULL;
    
ALTER TABLE IF EXISTS public."Specialties"
    ALTER COLUMN specialty_id ADD GENERATED ALWAYS AS IDENTITY;
    
ALTER TABLE IF EXISTS public."Specialties"
    ALTER COLUMN id_department SET NOT NULL;
    
ALTER TABLE IF EXISTS public."Specialties"
    ADD CONSTRAINT fk_specialties_departments FOREIGN KEY (id_department)
    REFERENCES public."Departments" (department_id) MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
    NOT VALID;
CREATE INDEX IF NOT EXISTS fki_fk_specialties_departments
    ON public."Specialties"(id_department);

