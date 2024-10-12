# FoundryVTT - Docker

This repository hosts a Foundry VTT docker setup. It was originally forked from [BenjaminPrice/fvtt-docker](https://github.com/BenjaminPrice/fvtt-docker)
and adapted to my personal needs.

It includes:
* a `Dockerfile` to create a functional docker image
* a corresponding `docker-compose.yml` to start the foundry instance

> [Foundry VTT](https://foundryvtt.com/) is a virtual tabletop for playing tabletop RPG games such as Dungeons & Dragons 5e.

## **Note**
You will need to manually download the zip file from your Foundry VTT account on the [official Foundry VTT website](https://foundryvtt.com/).

---

## **Installation**

## Prerequisites

- [Docker](https://docs.docker.com/engine/install/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Instructions

### Step 0 - Install Prerequisites

Ensure you have both Docker and Docker Compose installed by following the directions in the links above.

### Step 1 - Download this repository

Either with git clone or by downloading the corresponding zip file.

### Step 2 - Download and extract the Foundry VTT Zip File

- Navigate to your User Profile page and find your Software Download Links on your license page.
- Download the `Linux` version.
- Extract it to the `foundry` directory in this repository.

### Step 3 - Build the docker image

#### On Linux

```shell
./build-image.sh
```

#### On Windows

```shell
./build-image.bat
```

### Step 6 - Run the server

```shell
docker-compose up -d
```

### Step 7 - Access the server

Navigate to your server in your webbrowser (by IP address, is recommended)

[http://127.0.0.1:30000/](http://127.0.0.1:30000/)

Replace `127.0.0.1` with your own IP address.

### Step 8 - Stop the server

```shell
docker-compose down
```

