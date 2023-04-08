# Combined Flask and Express Apps

This repository contains two applications:

1. A Flask app for managing trainers (located in the `flask_app` folder)
2. An Express app for managing messages (located in the `express_app` folder)

Both applications are configured to run in a single Docker container. However, running multiple applications in a single container is not a best practice. A better approach would be to use Docker Compose to manage multiple containers, one for each app, and set up a reverse proxy like NGINX to route traffic to the appropriate container.

## Prerequisites

- Docker

## Usage

1. Clone the repository:

```sh
git clone https://github.com/your-username/combined_apps.git
cd combined_apps
```

2. Build the Docker image:
```sh
docker build -t combined_apps .
```

3. Run the Docker container:
```sh
docker run -d --name combined_apps_container -p 5000:5000 -p 3000:3000 combined_apps
```

The Flask app will be available at http://localhost:5000 and the Express app at http://localhost:3000.