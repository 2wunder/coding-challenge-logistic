## Getting started

To run this challange you need to have docker installed in your machine, a Nix system is required.

First you need to build docker images using the first command. then run it using the second one.
The first time you run the project you will need to setup the database using the 3th command.

### 1- Build:

```bash
bash build.sh
```

### 2- Run

```bash
bash run.sh
```

### 3- Setup databse

```bash
bash setup_db.sh
```

##### to call rake or rails

```bash
docker-compose run app rake db:migrate
docker-compose run app rails generate
```

## Coding challenge

Your goal is to create a website similar to klarx, where a customer can type in his location and sees the approximate logistic costs for a selected product.

### Details

#### Tasks

1. Create a website which shows 3 different product categories and an address input field
2. After selecting the category and submitting the address, the server should return the approximate delivery cost and show the nearest 3 product names
3. Products are delivered by a hauling truck. Depending on the weight of the product, the hauler needs to choose a different truck, which results in different cost. Products < 5t cost 75 €/h and Products >= 5t cost 90 €/h
4. Trucks need to be paid for the way to the construction site and also back, because they always drive back empty

#### Allowed to use

1. Matrix and geocoding API [https://graphhopper.com/api/1/docs](https://graphhopper.com/api/1/docs/#matrix-api) (API key: 1a751174-68c0-4792-bf22-60f3ca08712c )
2. A database of stations and related products in Munich
3. jQuery and any other Ruby / Javascript / Postgres tool or library you like

### Acceptance criteria

1. Correct delivery costs are calculated
2. Input fields look “neat” and are easy to use
3. Calculation of delivery cost does not take more than 2 seconds
4. SOLID principles are used

