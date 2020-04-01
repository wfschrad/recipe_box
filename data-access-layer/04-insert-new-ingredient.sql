-- This query needs to insert new data into the "recipes" table.
--
--   * Insert into the "ingredients" table:
--     * $1 is amount
--     * $2 is unit of measure id
--     * $3 is food stuff
--
--   * $4 will contain the recipe id
--
-- It needs to include all four positional parameters in the VALUES section so
-- that it inserts the value provided by the user.


-- YOUR CODE HERE
INSERT INTO ingredients
VALUES
    (DEFAULT, $1, $2, $3, $4);

    -- id SERIAL PRIMARY KEY,
    -- amount NUMERIC(5,2) NOT NULL,
    -- unit_of_measure_id INT NOT NULL,
    -- food_stuff VARCHAR(500) NOT NULL,
    -- recipe_id INT NOT NULL,
    -- FOREIGN KEY (unit_of_measure_id) REFERENCES units_of_measure(id),
    -- FOREIGN KEY (recipe_id) REFERENCES recipes(id)