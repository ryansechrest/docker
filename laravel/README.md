# Laravel

## 1a. Create Laravel

To start with new project, run in project root:

```
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
```

What it does:

1. Builds and starts `composer` utility container.
2. Runs `composer create-project` to download Laravel into `laravel` directory.
3. Stops and removes `composer` utility container upon completion.

## 1b. Clone Laravel

To start with existing project, clone repository into project root:

```
git clone git@github.com:ryansechrest/docker.git .
```

## 2. Configure MySQL settings

Edit `.env` in `laravel` directory:

```dotenv
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=laravel
DB_PASSWORD=secret
```

What it does:

1. Configures Laravel to connect to `mysql` container.

## 3. Start containers

Run in project root:

```
docker-compose up -d --build nginx
```

What it does:

1. Builds and starts `nginx`, `php`, and `mysql` containers.
2. Runs in detached mode and rebuilds `nginx` container on each start.

## 4. Configure database

Run in project root:

```
docker-compose run --rm artisan migrate
```

What it does:

1. Builds and starts `artisan` utility container.
2. Runs `artisan migrate` to set up database.
3. Stops and removes `artisan` utility container upon completion.

## 5. Visit application

Go to http://127.0.0.1:8000/ to see Laravel application.

Run `docker-compose down` to stop all containers.
