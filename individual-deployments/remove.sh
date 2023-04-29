docker stop $(docker ps --filter "ancestor=flask_app" -q) && docker rm $(docker ps -a --filter "ancestor=flask_app" -q)
docker stop $(docker ps --filter "ancestor=express_app" -q) && docker rm $(docker ps -a --filter "ancestor=express_app" -q)
docker stop $(docker ps --filter "ancestor=django_app" -q) && docker rm $(docker ps -a --filter "ancestor=django_app" -q)

docker image rm flask_app && docker image rm django_app && docker image rm express_app
