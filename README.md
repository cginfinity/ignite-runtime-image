## Ignite by Cyber Group

An [Integration & Digital Experience (DX) Platform](https://www.cgignite.com/) for your tactical business needs.

## Deploy to Heroku

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Cybergroup-Research/ignite-runtime-image)


## Upgrade Existing Runtime

Make sure you have [Docker](https://www.docker.com/products/docker-desktop), [Git Client](https://git-scm.com/downloads) and the [Heroku Toolbelt](https://toolbelt.heroku.com/) installed.

If you haven't already Clone [Runtime](https://github.com/Cybergroup-Research/ignite-runtime-image.git)
```sh
git clone https://github.com/Cybergroup-Research/ignite-runtime-image.git
cd ignite-runtime-image
```
Existing Cloned Repository
```
cd ignite-runtime-image
git pull origin master
```

If you haven't already, log in to your Heroku account and follow the prompts to create a new SSH public key.

```
$ heroku login
```
Log in to Container Registry
You must have Docker set up locally to continue. You should see output when you run this command.

```
$ docker ps
```
Now you can sign into Container Registry.

```
$ heroku container:login
```
Push your Docker-based app
Build the Dockerfile in the current directory and push the Docker image.

```
$ heroku container:push web --app <your app name>
```
Deploy the changes
Release the newly pushed images to deploy your app.

```
$ heroku container:release web --app <your app name>
```
