-- Table: public.Grades

-- DROP TABLE IF EXISTS public."Grades";

CREATE TABLE IF NOT EXISTS public."Grades"
(
    grade_id integer NOT NULL DEFAULT nextval('"Grades_grade_id_seq"'::regclass),
    grade character varying COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Grades"
    OWNER to postgres;