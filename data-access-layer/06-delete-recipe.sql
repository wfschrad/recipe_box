-- This query needs to delete a recipe. It will first have to delete all of the
-- data that depends on the recipe, too. Refer to the CREATE TABLE statements
-- that you wrote for all tables that have a foreign key to the recipes table.
-- Then, delete the rows in those tables first based on the recipe id column.
--
-- That means you'll need to write more than one delete statement in this file.
-- DON'T FORGET YOUR SEMICOLONS AFTER EACH STATEMENT!
--
-- The positional parameter $1 will contain the id of the recipe.
--
-- The general form for deleting data is
--
-- DELETE FROM ...
-- WHERE ...


-- YOUR CODE HERE
DELETE FROM ingredients
    WHERE recipe_id = $1;

DELETE FROM instructions
    WHERE recipe_id = $1;

DELETE FROM recipes
    WHERE id = $1;




-- CREATE TABLE recipes (
--     id SERIAL PRIMARY KEY,
--     title VARCHAR(200) NOT NULL,
--     created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
--     updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
-- );

-- id SERIAL PRIMARY KEY,
--     amount NUMERIC(5,2) NOT NULL,
--     unit_of_measure_id INT NOT NULL,
--     food_stuff VARCHAR(500) NOT NULL,
--     recipe_id INT NOT NULL,
--     FOREIGN KEY (unit_of_measure_id) REFERENCES units_of_measure(id),
--     FOREIGN KEY (recipe_id) REFERENCES recipes(id)

-- id SERIAL PRIMARY KEY,
--     specification TEXT NOT NULL,
--     list_order INT NOT NULL,
--     recipe_id INT NOT NULL,
--     FOREIGN KEY (recipe_id) REFERENCES recipes(id)