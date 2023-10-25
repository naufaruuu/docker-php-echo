# PHP Hello Word Echo Server in Docker

`25 October 2023`

This project is used as my Technical Assessment for DevOps
Engineer Intern in PT. Inovasi Daya Solusi.

## Features
- Image based on Ubuntu 22.04
- Installed app : Apache2, Supervisor, PHP 8.1
- Apache2 is used to host PHP Echo file
- Supervisor is used to manage multiple processes running inside the container
- PHP is used to run PHP Code

## Deployment

1. Build Docker Image with name "docker-php-echo"

```bash
  docker build -t docker-php-echo .
```

2. Check the image with Docker Image List

```bash
  docker images
```

3. Deploy Docker Container with name "php-echo-1" with our image and port 80. Make sure that there are no service using port 80!

```bash
  docker run -p 80:80 --name php-echo-1 -d docker-php-echo
```

4. Check the container with Docker Container List

```bash
  docker ps
```

5. Voila! Access `localhost` or `Host IP Address` in the browser

## Screenshots

Browser

![Browser](screenshots/browser.png)

Docker Image List

![docker_images](screenshots/docker_images.png)

Docker Container List

![docker_ps](screenshots//docker_ps.png)

## Run Environtment

**Host**
- Ubuntu 22.04 - VMWare
- Docker 24.0.6, build ed223bc

**Client**
- Windows 11 - Native
- Microsoft Edge 118.0.2088.61

## Related

Here is my related project

[Docker Apache2 & MySQL Automation](https://bit.ly/AlfaDocker1)


## 🔗 Links
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=web&logoColor=white)](https://naufalalfadli.netlify.app)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/ahmad-naufal-abdurrohman-alfadli-84a824190/)
[![twitter](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/naufalalfa_/)


