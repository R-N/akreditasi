/* content of the script.lisp */
LOAD DATABASE 
FROM mysql://root:@localhost:3306/akreditasi 
INTO postgres://Linearch:@localhost:5432/postgres?sslmode=allow 
WITH include drop, create tables, create indexes, reset sequences 
;
