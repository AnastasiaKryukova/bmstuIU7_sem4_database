ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN email SET NOT NULL;

ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN gob SET NOT NULL;

ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN gender SET NOT NULL;
ALTER TABLE IF EXISTS public."Students"
    ADD PRIMARY KEY (student_id);

ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN student_id DROP DEFAULT;
    
ALTER TABLE IF EXISTS public."Students"
    ALTER COLUMN student_id ADD GENERATED ALWAYS AS IDENTITY;
    
ALTER TABLE IF EXISTS public."Students"
    ADD CONSTRAINT void_last_name CHECK (last_name != ' ')
    NOT VALID;
    
ALTER TABLE IF EXISTS public."Students"
    ADD UNIQUE (email);
