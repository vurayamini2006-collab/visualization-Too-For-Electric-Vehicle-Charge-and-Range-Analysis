CREATE DATABASE electric_cars;
USE electric_cars;

-- Table 1: Electric Car Data
CREATE TABLE electriccardata_clean (
    Brand VARCHAR(50),
    Model VARCHAR(100),
    Body_Style VARCHAR(50),
    Power_Train VARCHAR(50),
    Range_Km INT,
    Efficiency_WhKm FLOAT,
    TopSpeed_KmH INT,
    Price_Euro FLOAT,
    Seats INT
);

-- Table 2: EV Cars in India
CREATE TABLE evindia (
    Car VARCHAR(100),
    Brand VARCHAR(50),
    PriceRange_Lakhs FLOAT,
    TopSpeed INT,
    PowerTrain VARCHAR(50)
);

-- Table 3: Charging Stations
CREATE TABLE electric_vehicle_charging_station_list (
    Region VARCHAR(100),
    Address TEXT,
    Type VARCHAR(50),
    Latitude DOUBLE,
    Longitude DOUBLE
);

-- Table 4: Cheapest EV Cars
CREATE TABLE cheapestelectriccars_evdatabase (
    Brand VARCHAR(50),
    Model VARCHAR(100),
    Price_Euro FLOAT,
    Range_Km INT,
    Efficiency_WhKm FLOAT
);
