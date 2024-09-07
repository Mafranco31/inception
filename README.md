# Inception

This project is aimed to understand how works Docker and Docker compose.

# Description

Inception is composed of 3 docker images:
  - nginx : used to manage the server and redirect the http requests to the wordpress container. Then send back to port 443 the html file from wordpress.
  - wordpress : with wordpress installed, get the http requests from nginx, ask for mariadb the database of the website and use php to send to nginx the html file.
  - mariadb : get wordpress requests and use mysql to manage database and send back to wordpress the data.

# Installation

This project require Docker and Docker compose.
Before compiling with make, add your pasword in srcs/.env

After compiling, wait for the end and then wait at least 20 seconds to let time to mariadb and wordpress to install properly.

Then you can access to the website in your browser at https://localhost or https://mafranco.42.fr
