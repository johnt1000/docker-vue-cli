# About

This container will have the items necessary to run the vue-cli.

# Using this container

Using this via docker-compose:

```
version: '3'
services:
  vue:
    image: jonatasra/vue-cli
    command: npm run dev
    volumes:
      - .:/app
    ports:
      - "8080:8080"
```