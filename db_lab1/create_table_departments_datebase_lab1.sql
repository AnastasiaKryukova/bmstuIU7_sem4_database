-- Table: public.Departments

-- DROP TABLE IF EXISTS public."Departments";

CREATE TABLE IF NOT EXISTS public."Departments"
(
    department_id integer NOT NULL DEFAULT nextval('"Departments_department_id_seq"'::regclass),
    department_name character varying COLLATE pg_catalog."default",
    head_of_department character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Departments"
    OWNER to postgres;