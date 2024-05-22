-- Table: public.Enrollments

-- DROP TABLE IF EXISTS public."Enrollments";

CREATE TABLE IF NOT EXISTS public."Enrollments"
(
    enrollment_id integer NOT NULL DEFAULT nextval('"Enrollments_enrollment_id_seq"'::regclass),
    student_id integer,
    course_id integer,
    id_grade integer,
    id_department integer,
    enrollment_date date
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Enrollments"
    OWNER to postgres;
