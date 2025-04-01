# OAuth2

OAuth is designed for applications to get access to APIs. The application needs the ability to access the API but doesn't need to known who the user is that is using the application.

## A Real World Analogy

An example of something like OAuth is checking into a hotel.

When you go into a hotel, you check in. You show the person at the front desk your ID and they give you back a hotel key.

The key is what you use to access the hotel's resources, a room, the gym or swimming pool etc. However accessing those resources doesn't require those resources to know who you are.

This analogous to OAuth, where the person at the front desk is like the authorisation server. They're the ones checking ID and authenticating the user.

## Roles

| Role                 | OAuth Term      |
| -------------------- | --------------- |
| User                 | Resource owner  |
| Device               | User Agent      |
| Application          | Client          |
| API                  | Resource Server |
| Authorisation Server |                 |

### User

The person with the account

### Device

The thing accessing the application. A mobile phone app or the browser for example

### Application

The running code. Either on the device (if it's a mobile app) or on a server (for a web app)

### API

The server that holds the data the application wishes to access.

### Authorisation Server

Manages access to the API. It does this by getting the user to log in at the authorisation sever and then creating an access token and giving that token to the app.

## Flow

Before you can even start an auth flow, you must register your OAuth client application with the authorisation server.

The way you register can be different depending on the server. Typically you go to the developer website for the authorisation service you are using and register as a developer. However if you're using a company or private enterprise authorisation service, you might need to get an administrator to register your application for you.

Once you have registered you will get back a client id and you may or may not get back a client secret. When you register you will most likely be expected to enter a few things. The name of the app and possibly one or more redirect urls for the app. The client id is considered public information, so is ok to put into your source code etc.
