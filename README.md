# DM-setup
DM database setup

## Usage
In order to setup the database, [docker](https://docs.docker.com/get-docker/) and [docker-compose](https://docs.docker.com/compose/install/) is required.

### !Required steps!
In order to have this running following steps are required:
1. Add your schema to the [CreateSchema.sql](CreateSchema.sql) file.
2. Add all code that you want in your Ubuntu-Instance to the [code/](code/) folder.
3. Run the make-file (`make all`) (or by hand)

### Running by hand:
```bash
docker-compose up --build -d
docker-compose run -it --rm ubuntu bash
```

### pgadmin
You can access the pgadmin [here](http://localhost:8080). (http://localhost:8080)

### Checker
You can check your SQL queries by add them to the [check/](check/) folder. Then run the check.py file in the ubuntu container:
```bash
python3 check.py -s *.sql
```

### Configuration
Configuration is optional
If credentials change is desired, you can do so in the [cfg/env](cfg/env) file.
