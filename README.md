# PimpMyPC Computer Shop API

An application for a computer shop with an extensive configurator that checks if parts are compatible with each other. The platform also allows users to create and manage their accounts, helping them keep track of their orders and easily review their purchase history. Customers have access to multiple categories and filters that facilitate the process of finding the products they are looking for. The page also provides guides on how to make informed purchases.

## Live demo

[https://relaxed-mcclintock-f71241.netlify.app/](https://relaxed-mcclintock-f71241.netlify.app/)

## Features:

- Create and manage user account
- Browse products using categories and various filters
- Configurator that helps build PC by selecting parts and checking their compability
- Track order status
- Check shopping history
- And more

## Screens

<p float="left">
      <img src="https://github.com/Tegridy/PimpMyPc/assets/39922364/b49be09a-8f4f-411d-9357-c72fce32104a" width="495">
      <img src="https://github.com/Tegridy/PimpMyPc/assets/39922364/e668e4cc-2ef5-4ca7-9a34-ceffce8793ef" width="495">
</p>
<p float="left">
      <img src="https://github.com/Tegridy/PimpMyPc/assets/39922364/821385e3-1314-4e6d-829b-0d45d0d481f3" width="495">
      <img src="https://github.com/Tegridy/PimpMyPc/assets/39922364/ddcf11b5-dabf-473d-bac5-9d7020228197" width="495">
</p>

## Build and run

You can run this app by building docker container. 
Run `docker build -t pmp-api:1.0 --build-arg MYSQL_PASSWORD=pass --build-arg DB_HOST=localhost --build-arg DB_PORT=3306 --build-arg JWT_SECRET=secret .` command to start building container. After that start app by running `docker run --name pmp-api -p 9999:9999 -e spring.profiles.active=prod -e DB_HOST=123.456.789.123 -e MYSQL_PASSWORD=dbpassword -e DB_PORT=1234 -e PORT=9999 -e JWT_SECRET=someseckey pmp-api:1.1` 

> <picture>
>   <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/light-theme/info.svg">
>   <img alt="Info" src="https://raw.githubusercontent.com/Mqxx/GitHub-Markdown/main/blockquotes/badge/dark-theme/info.svg">
> </picture><br>
>
> In your MySQL you need to create database named `pmp` and `pmp_test` first.

## Running tests

Run `./mvnw test` to execute the integration and unit tests.

## Created with

- SpringBoot 
- Docker
- QueryDSL
- JUnit
- Mockito

## Frontend informations

You can find more informations on [Angular frontend](https://github.com/Tegridy/PimpMyPC) page
