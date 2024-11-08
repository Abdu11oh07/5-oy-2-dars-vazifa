--  -- 1 Topshiriq

-- DROP TABLE IF EXISTS departments CASCADE;
-- DROP TABLE IF EXISTS employes CASCADE;
-- DROP TABLE IF EXISTS projects CASCADE;
-- DROP TABLE IF EXISTS tasks CASCADE;

-- -- Cascade funksiyasi siz codni ishlatolmadim 

-- -- DEPARTMENTS jadvali
-- CREATE TABLE IF NOT EXISTS departments(
--     id serial PRIMARY KEY,
--     name text,
--     location TEXT
-- );

-- INSERT INTO departments(name, location) VALUES
-- ('Jalil', 'Python'),
-- ('Sobir', 'C++'),
-- ('Bakir', 'C#');





-- -- EMPLOYES jadvali
-- CREATE TABLE IF NOT EXISTS employes(
--     id serial PRIMARY KEY,
--     name text, 
--     position text, 
--     department_id INTEGER REFERENCES departments(id)
-- );


-- INSERT INTO employes(name, position, department_id) VALUES
-- ('Jalil', 'Junior', 1),
-- ('Sobir', 'Medium', 2),
-- ('Bakir', 'Senior', 3);





-- -- PROJECTS jadvali
-- CREATE TABLE IF NOT EXISTS projects(
--     id serial PRIMARY KEY,
--     title text, 
--     department_id INTEGER REFERENCES departments(id)
-- );

-- INSERT INTO projects(title, department_id) VALUES
-- ('UZUM', 1),
-- ('OLCHA', 2),
-- ('ALIBABA', 3);



-- -- TASKS
-- CREATE TABLE IF NOT EXISTS tasks(
--     id serial PRIMARY KEY,
--     descriptions text, 
-- 	project_id INTEGER REFERENCES projects(id),
--     employee_id INTEGER REFERENCES employes(id)
-- );

-- INSERT INTO tasks(descriptions, project_id, employee_id) VALUES
-- ('Abdulloh Ahmadjonov', 1, 1),
-- ('Jamoliddin Holmatov', 2, 2),
-- ('Muhammadjon Abdujabborov', 3, 3);



-- SELECT * FROM departments;
-- SELECT * FROM employes;
-- SELECT * FROM projects;
-- SELECT * FROM tasks;

-- -- 2 Topshiriq

-- ALTER TABLE employes DROP COLUMN email;
-- ALTER TABLE employes ADD COLUMN email TEXT;

-- UPDATE employes 
-- SET email = 'siddiquzb@gmail.com'
-- WHERE id = 1;

-- ALTER TABLE tasks 
-- ALTER COLUMN descriptions TYPE VARCHAR(255);

-- SELECT * FROM employes; 
-- SELECT * FROM tasks; 


--  -- 3 Topshiriq

-- UPDATE employes SET position = 'Senior developer'  WHERE ID = 1;

-- UPDATE projects SET title = 'New Project Title' WHERE id = 2;


-- SELECT * FROM employes;
-- SELECT * FROM projects;


--  -- 4 Topshiriq

-- ALTER TABLE tasks
-- DROP CONSTRAINT tasks_project_id_fkey,
-- ADD CONSTRAINT tasks_project_id_fkey FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE;


-- ALTER TABLE tasks
-- DROP CONSTRAINT tasks_employee_id_fkey,
-- ADD CONSTRAINT tasks_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES employes(id) ON DELETE SET NULL;


-- DELETE FROM employes WHERE id = 3;
-- DELETE FROM projects WHERE id = 3;

-- SELECT * FROM tasks




