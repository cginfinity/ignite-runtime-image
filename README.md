## Ignite by Cyber Group

An [Integration & Digital Experience (DX) Platform](https://www.cgignite.com/) for your tactical business needs.

## Deploy to Heroku

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Cybergroup-Research/ignite-runtime-image)


## Deploy to Azure
[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FCybergroup-Research%2Fignite-runtime-image%2Fmaster%2Fazure-deployment.json)


## Upgrade Existing Runtime

Make sure you have [Docker](https://www.docker.com/products/docker-desktop), [Git Client](https://git-scm.com/downloads) and the [Heroku Toolbelt](https://toolbelt.heroku.com/) installed.

If you haven't already, clone [Runtime](https://github.com/Cybergroup-Research/ignite-runtime-image.git)
```sh
git clone https://github.com/Cybergroup-Research/ignite-runtime-image.git
cd ignite-runtime-image
```
From existing cloned repository, run the following
```
cd ignite-runtime-image
git pull origin master
```

If you haven't already, login to your Heroku account and follow the prompts to create a new SSH public key.
```
$ heroku login
```
Now, to log into the container registry, you must have Docker set up in your local environment. You should see output when you run this command.

```
$ docker ps
```
Next, log into the Heroku Container Registry.

```
$ heroku container:login
```
To push your Docker-based app, build the Dockerfile in the current directory and push the Docker image
```
$ docker build . -t <your-app-name>
```

```
$ heroku container:push web --app <your-app-name>
```
Finally, release your container to your app! 
```
$ heroku container:release web --app <your-app-name>
```
That's it! Happy Low-Coding!
