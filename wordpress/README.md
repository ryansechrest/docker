# WordPress

## 1. Create WordPress

To start with new project, run in project root:

```
docker compose run --rm wp core download
```

What it does:

1. Builds and starts `wp` (wp-cli) utility container.
2. Runs `wp core download` to download WordPress into `wordpress` directory.
3. Stops and removes `wp` utility container upon completion.

## 2. Start containers

Run in project root:

```
docker compose up -d --build nginx
```

What it does:

1. Builds and starts `nginx`, `php`, and `mysql` containers.
2. Runs in detached mode and rebuilds `nginx` container on each start.

> ⚠️ Remove `--build` flag to speed up launch if nothing changed.

## 3. Configure MySQL settings

```
docker compose run --rm wp config create --dbhost=mysql --dbname=wordpress --dbuser=wordpress --dbpass=secret --skip-check
```

What it does:

1. Creates `wp-config.php` file to connect to `mysql` container.

## 3. Visit application

Go to http://127.0.0.1:6800/ to see Laravel application.

Connect to MySQL using `127:0.0.1:8603` with user `wordpress` and password `secret`.

Run `docker compose down` to stop all containers.
