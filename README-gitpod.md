[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-Ready--to--Code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/kelda/node-todo) 

# Try out Kelda Blimp

This directory contains an example `node` application that stores data in
`mongo`. Shout out to the original author,
[scotch-io](https://github.com/scotch-io/node-todo).

The following instructions will walk you through using `blimp` to develop in
the cloud.

## 1. Login to Kelda Blimp

This creates an isolated sandbox that your Docker containers will run in.

```
blimp login
```

Open the resulting link in your browser (it doesn't have to be in GitPod), and log in.

## 2. Boot the app

```
blimp up
```

This will boot the `node` and `mongo` containers. Once they're up, access the
todo UI at [http://localhost:8080](http://localhost:8080), and a couple todo tasks.

## 3. Make a code change

Open `app/routes.js`, uncomment the code on line 12, and save the file.

Kelda Blimp will sync the change into the container, and `nodemon` will restart
the Node server.

## 4. Confirm that the code change worked

Reload [http://localhost:8080](http://localhost:8080). You will now see each
todo prepended with "Kelda:"

## 5. Explore the other Blimp commands

```
blimp ps

blimp logs web

blimp ssh web
```
