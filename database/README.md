# JSON Mutator Database

Docker container with  postgres database used for local development.

## Running the database

1. Make sure the current image on your machine is no longer necessary. The
image and container will be recreated from scratch.

2. Execute reload-database.sh to create and start the container:

   ```bash
   ./reload-database.sh
   ```

3. Check if the container 'db-jsonmutator' is up and running:

   ```bash
   docker ps
   ```

## Connecting to the database

1. Open DBeaver or your prefered database explorer;

2. Create a new Postgres connection, with the following properties:

   * **User**: system
   * **Host**: localhost
   * **Database**: db_jsonmutator
   * **Password**: postgres
   * **Port**: 5432

All set! Now you can query and manipulate the database.
