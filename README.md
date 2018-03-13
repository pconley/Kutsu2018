# Kutsu2018

This README would normally document whatever steps are necessary to get the
application up and running.

## PG Database (on mac)

```
initdb -D pg_data      # one time to initialize the db
createdb dev1          # dev1 is the name of the database
pg_ctl -D pg_data -l logfile start
psql                   # to enter interactive mode
pg_ctl -D pg_data stop
```


## General Notes
devise for Agents and Admins

## Testing Notes

```
rspec spec # for classic unit tests
```

```
rspec webtests # for shiken based test
rspec webtests --format documentation
HOST=prod rspec webtests # to run against heroku
TRACE=on rspec webtests  # to get verbose tracing
```

## Heroku Notes

```
heroku apps:info
```

Normally you push the master to deploy to heroku, but you can use
the following to push the "development" branch to heroku
```
git push heroku development:master
```

do not forget to precomile if changing the css; then add; comit; push
```
rake assets:precompile
```

## TODO
* mobile menu has not kept up with changes
* wicked wizard prototype for requests
* toast for the rails messages (done)
* restructure pubil page routes (DONE)
* start adding unit test (STARTED)
* add webtests using shiken
