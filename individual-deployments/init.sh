docker build -t flask_app:latest -f Dockerfile.flask .
docker build -t express_app:latest -f Dockerfile.express .
docker build -t django_app:latest -f Dockerfile.django .

docker run -d -p 5001:5001 flask_app
docker run -d -p 3001:3001 express_app
docker run -d -p 8001:8001 django_app
