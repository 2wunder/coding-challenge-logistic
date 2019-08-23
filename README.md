## Getting started

To run this challenge you need to have docker installed in your machine, a Nix system is required.

First you need to build docker images using the first command. then run it using the second one.
The first time you run the project you will need to setup the database using the 3rd command.

Have a look at [https://docs.docker.com/get-started](https://docs.docker.com/get-started) for more information.

### 1- Build:

```bash
bash build.sh
```

### 2- Run

Keep this open to access the server under localhost:3000

```bash
bash run.sh
```

### 3- Setup databse

```bash
bash setup_db.sh
```

##### to call any rake, rails or related commands

```bash
docker-compose run app rake db:migrate
docker-compose run app rails generate
docker-compose run app bundle install
```

## Coding challenge

Your goal is to create a website similar to klarx, where a customer can type in his location and sees the approximate logistic costs for a selected category and the nearest 3 products available.

### Details

#### Tasks

1. Create a website which shows 3 different categories and an address input field
2. After selecting the category and submitting the address, the server should return the approximate delivery cost and show the nearest 3 product names
3. Products are delivered by a hauling truck. Depending on the weight of the product, the hauler needs to choose a different truck, which results in different cost. Products < 5t cost 75 €/h and Products >= 5t cost 90 €/h
4. Trucks need to be paid for the way to the construction site and also back, because they always drive back empty

#### Allowed to use

1. Matrix and geocoding API [https://graphhopper.com/api/1/docs](https://graphhopper.com/api/1/docs/#matrix-api) (API key: 1a751174-68c0-4792-bf22-60f3ca08712c )
2. jQuery and any other Ruby / Javascript / Postgres tool or library you like

#### Data Structure

The database is already set up by the script and filled with seed data. See /dump.sql for more info.

1. Products belong to Categories, categories have many Products
2. Products belong to Stations, Stations have many Products

```sql
CREATE TABLE categories (
    id bigint NOT NULL,
    name character varying(20) NOT NULL
);

CREATE TABLE products (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    category_id bigint NOT NULL,
    station_id bigint NOT NULL,
    weight bigint NOT NULL
);

CREATE TABLE stations (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL
);
```
### Acceptance criteria

1. Correct delivery costs are calculated
2. Input fields look “neat” and are easy to use
3. Calculation of delivery cost does not take more than 2 seconds
4. SOLID principles and best practices are used

