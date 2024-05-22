-- Table: public.Students

-- DROP TABLE IF EXISTS public."Students";

CREATE TABLE IF NOT EXISTS public."Students"
(
    student_id integer NOT NULL DEFAULT nextval('"Students_student_id_seq"'::regclass),
    first_name character varying(100) COLLATE pg_catalog."default",
    last_name character varying(100) COLLATE pg_catalog."default",
    gob date,
    gender character varying(50) COLLATE pg_catalog."default",
    email character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Students"
    OWNER to postgres;