# Basic Postgres
This project is to showcase setting up postgres.

# Usage
1. Start postgres & adminer
    ```bash
    docker-compose up
    ```
   1. The above will start postgres & run ```docker-entrypoint-initdb.d/init-user-db.sh``` initialisation script.
   1. The initialisation script will create a user & DB.
1. Open browser ```http://localhost:8080```
    1. Server: ```db```
    1. Postgres default super user
        1. Username: ```postgres```
        1. Password: ```example```
        1. Database: ```postgres```
    1. Docker user (created in init scripts)
        1. Username: ```docker```
        1. Password: ```example```
        1. Database: ```docker_db```