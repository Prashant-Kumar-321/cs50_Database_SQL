.import --csv student.csv temp 

INSERT INTO students (reg_no, name, branch, sem)
SELECT * FROM temp; 

DROP TABLE temp; 