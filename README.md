# Kutsu2018

This README would normally document whatever steps are necessary to get the
application up and running.

## PG Database

initdb -D pg_data      # one time to initialize the db

createdb dev1          # dev1 is the name of the database

pg_ctl -D pg_data -l logfile start

psql                   # to enter interactive mode

pg_ctl -D pg_data stop