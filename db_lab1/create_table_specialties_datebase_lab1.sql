-- Table: public.Specialties

-- DROP TABLE IF EXISTS public."Specialties";

CREATE TABLE IF NOT EXISTS public."Specialties"
(
    specialty_id integer NOT NULL DEFAULT nextval('"Specialties_specialty_id_seq"'::regclass),
    specialty_name character varying COLLATE pg_catalog."default",
    description text COLLATE pg_catalog."default",
    id_department integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Specialties"
    OWNER to postgres;