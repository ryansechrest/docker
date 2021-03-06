# Laravel

## 1a. Create Vue

To start with new project, run in project root:

```
docker-compose run --rm npm init vue
```

What it does:

1. Builds and starts `npm` utility container.
2. Runs `npm init vue` to download Vue into `vue` directory.
   - Runs `npm install` to install dependencies.
3. Stops and removes `npm` utility container upon completion.

## 1b. Clone Vue

To start with existing project, clone repository into project root:

```
git clone git@github.com:<username>/<repository>.git .
```

## 2. Install dependencies

> ⚠️ Only needed for cloned projects.

Run in project root:

```
docker-compose up --rm npm install
```

What it does:

1. Downloads dependencies as defined in `package.json`

## 3. Start containers

Run in project root:

```
docker-compose up -d --build node
```

What it does:

1. Builds and starts `node` container.
2. Runs in detached mode and rebuilds `node` container on each start.

## 4. Visit application

Go to http://127.0.0.1:6802/ to see Vue application.

Run `docker-compose down` to stop container.
