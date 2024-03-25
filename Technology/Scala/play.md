# Play Framework

[up](./Scala.md)

Notes made on this [playlist](https://www.youtube.com/playlist?list=PLLMXbkbDbVt8tBiGc1y69BZdG8at1D7ZF)

## Setup with sbt

You can use the play framework template to start a new project by typing

``` bash
sbt new playframework/play-scala-seed.g8 
```

into your terminal.

## Structure of a play framework app

### app

This is were your code lives. It contains your controllers, your views and your models, plus any additional code your app might need.

### conf

This directory holds all the configuration files for your app. Most importantly the routes file which is where you configure your routes in your app.

### public

Allows you to add more public files to your app, for example javascript files and image files your apps front end would use. All these are under the route `/assets`.

### test

This is where all your test code lives.

## Running the app

To run the app just start sbt by typing

``` bash
sbt
```

into a terminal, then typing

 ``` sbt
 run
 ```

 into sbt. This will run the app up and watch for changes in your code to rebuild as required.

 The app will listen on port 9000, so typing in `localhost:9000` into your browser will display your web app.
 