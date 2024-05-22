-- Table: public.Courses

-- DROP TABLE IF EXISTS public."Courses";

CREATE TABLE IF NOT EXISTS public."Courses"
(
    course_id integer NOT NULL DEFAULT nextval('"Courses_course_id_seq"'::regclass),
    course_name character varying COLLATE pg_catalog."default",
    id_department integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Courses"
    OWNER to postgres;
