# Laravel

### 1. Download Laravel

Run in project root:

```
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
```

What it does:

1. Launches `composer` utility container.
2. Runs `composer create-project` to download Laravel into `src` directory.
3. Removes `composer` utility container upon completion.

### 2. Configure MySQL settings

Edit `.env` in `src` directory:

```dotenv
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
```

What it does:

1. Tells Laravel how to connect to `mysql` container.

### 3. Start containers

Run in project root:

```
docker-compose up -d --build nginx
```

1. Downloads base images and builds custom images on top.
2. Starts `nginx`, `mysql`, and `php` container in detached mode.

Builds Docker images and starts `nginx`, `mysql`, and `php` container.

### 4. Configure database

Run in project root:

```
docker-compose run --rm artisan migrate
```

What it does:

1. Launches `artisan` utility container.
2. Runs `artisan migrate` to configure database.
3. Removes `artisan` utility container upon completion.

### 5. Visit application

Go to http://127.0.0.1:8000/ to see Laravel application.