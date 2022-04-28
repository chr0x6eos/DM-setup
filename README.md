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
docker-compose run --build -d
docker-compose run -it --rm ubuntu bash
```

### Configuration
Configuration is optional.
If credentials change is desired, you can do so in the [cfg/env](cfg/env) file.