SELECT species_name "Species Name:", nutrition_type "Nutrition Type:"
FROM tbl_species
INNER JOIN tbl_nutrition ON species_nutrition = nutrition_id;


SELECT* FROM tbl_nutrition;
SELECT * FROM tbl_species;


/* creating a table of a specialist info using two inner joins to find the one who works w penguins */
SELECT specialist_fname, specialist_lname, specialist_contact 
FROM tbl_specialist
INNER JOIN tbl_care ON specialist_id = care_specialist
INNER JOIN tbl_species ON care_id = species_care
WHERE species_name = 'penguin';


SELECT * FROM tbl_specialist;
SELECT * FROM tbl_care;
SELECT * FROM tbl_species;