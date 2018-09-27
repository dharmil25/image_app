# Image Sharing Application

This is a web application for Image Sharing:

## Getting started

To get started with the application, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the app in a local server:

```
$ rails server
```

## About the App

Features:

1.  Users can sign up on the website via their email address and        create their own personal albums.

2.  Users can upload upto 25 images per album. 
    (Image properties: Image, Tagline, Created Date, Owner)
    Images should be attached with a tagline.

3.  Users can create any number of albums.
    (Album properties: Name, Created Date, Owner)
    Album should be created with a Name.

4.  Images uploaded by all Users will be visible on the homepage.

5.  Home page of the website displays last 25 images uploaded and       who uploaded it.

6.  Users profile page displays all the albums by that user.
