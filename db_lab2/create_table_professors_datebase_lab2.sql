-- Table: public.Professors

-- DROP TABLE IF EXISTS public."Professors";

CREATE TABLE IF NOT EXISTS public."Professors"
(
    professor_id integer NOT NULL DEFAULT nextval('"Professors_professor_id_seq"'::regclass),
    first_name character varying COLLATE pg_catalog."default",
    last_name character varying COLLATE pg_catalog."default",
    email character varying COLLATE pg_catalog."default",
    id_department integer,
    id_specialty integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Professors"
    OWNER to postgres;
