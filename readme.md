
## About Urban Route

Urban food was created to be a contest where people can vote for a dish of each restaurant competing. The winner of the contest is the dish that belong to the restaurant with the best ranking. 
Urban Food helps you not only find but also participate in the selection of the best dish in your city. A series of food categories defined as “Masters”were created where restaurants all over the city can participate with the goal to become the Master of each category. Start your route and become a food tester! Start your route in your city and eat as much as you can through out the length of the master. Remember to rate your favourites dishes. Also, as a participant, if you rate the most amount of dishes in the current Master you can win at the end of the contest a month of free food at the top 5 restaurants.


## Tech used

For this project I used Laravel for the Back-end and for the Front-end routing part I used Vue.js and Boostrap. 


## Installing Urban Route

Clone or download the repository, then install the database called ``` urban_route_db.sql``` that is in the file, I used MAMP to create mine.

```bash
cd the folder in the terminal.
```

```bash
run composer update
```

once the package manifest generates sucesfully run 
```bash
php artisan vendor:publish --provider="FarhanWazir\GoogleMaps\GMapsServiceProvider"
```
we have to create the .env file. Open the folder downloaded in your code editor. Create a new file and paste all the code you will find [here](https://github.com/laravel/laravel/blob/master/.env.example)

Change the DB_PORT to 8889 if you'r in a mac, then DB_DATABASE=urban_route_db, DB_USERNAME=root , DB_PASSWORD=root
```bash
run php artisan serve
````
Then you are ready to go start the route. Be carefull though, you may get hungry!
