// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Structs
{
    struct Car
    {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function example() external
    {
        Car memory toyota = Car("2D-Saloon", 1987, msg.sender);
        Car memory lambo = Car({model: "Jalpa", year: 2007, owner: msg.sender});
        Car memory tesla;
        tesla.model = 'A2';
        tesla.year = 2009;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari-F1", 2020, msg.sender));

        Car storage _car = cars[0]; //storage reflects permanent changes in data whereas memory temporary.
        _car.model = 'Suzuki-Mehran';
        _car.owner = msg.sender;
        _car.year = 2021;

        delete _car.owner;

        delete cars[1]; // delete struct resets all the data to default values.

    }
}