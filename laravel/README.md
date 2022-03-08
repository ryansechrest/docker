# Laravel

## 1a. Create Laravel

To start with new project, run in project root:

```
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
```

What it does:

1. Builds and starts `composer` utility container.
2. Runs `composer create-project` to download Laravel into `laravel` directory.
   - Copies `.env.example` to `.env`.
   - Runs `composer install` to install dependenices.
   - Runs `artisan key:generate` to set `APP_KEY` to random key.
3. Stops and removes `composer` utility container upon completion.

## 1b. Clone Laravel

To start with existing project, clone repository into project root:

```
git clone git@github.com:<username>/<repository>.git .
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

## 4. Install dependencies

> :warning: Only needed for cloned projects.

Run in project root:

```
docker-compose up --rm composer install
```

What it does:

1. Downloads dependencies as defined in `composer.json`

## 5. Generate key

> :warning: Only needed for cloned projects.

Run in project root:

```
docker-compose up --rm artisan key:generate
```

What it does:

1. Generates `APP_KEY` value in `.env` file

## 6. Configure database

Run in project root:

```
docker-compose run --rm artisan migrate
```

What it does:

1. Builds and starts `artisan` utility container.
2. Runs `artisan migrate` to set up database.
3. Stops and removes `artisan` utility container upon completion.

## 7. Visit application

Go to http://127.0.0.1:8000/ to see Laravel application.

Run `docker-compose down` to stop all containers.
