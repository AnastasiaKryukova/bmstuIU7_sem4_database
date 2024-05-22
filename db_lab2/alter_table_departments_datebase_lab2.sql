ALTER TABLE IF EXISTS public."Departments"
    ALTER COLUMN department_name SET NOT NULL;

ALTER TABLE IF EXISTS public."Departments"
    ALTER COLUMN head_of_department SET NOT NULL;
ALTER TABLE IF EXISTS public."Departments"
    ADD PRIMARY KEY (department_id);

ALTER TABLE IF EXISTS public."Departments"
    ALTER COLUMN department_id DROP DEFAULT;
    
ALTER TABLE IF EXISTS public."Departments"
    ALTER COLUMN department_id ADD GENERATED ALWAYS AS IDENTITY;
