heroku login
heroku apps
read -p 'Enter App Name: ' appname
heroku container:login
heroku container:push web --app $appname
heroku container:release web --app $appname
read -p 'Press Enter To Exit: ' q


