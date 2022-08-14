# Vue

## 1a. Create Vue

To start with new project, run in project root:

```
docker-compose run --rm npm init vue
```

What it does:

1. Builds and starts `npm` utility container.
2. Runs `npm init vue` to download Vue into `vue` directory.
3. Stops and removes `npm` utility container upon completion.

When prompted for `Project name`, enter a `.` and press ENTER.

This forces the project to be installed in the `vue` directory and not another sub-directory within.

It's important, because Docker has been configured to run the project from the `vue` directory.

## 1b. Clone Vue

To start with existing project, clone repository into project root:

```
git clone git@github.com:<username>/<repository>.git .
```

## 2. Install dependencies

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

Go to http://127.0.0.1:8602/ to see Vue application.

Run `docker-compose down` to stop container.
