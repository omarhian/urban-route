<?php

use Illuminate\Database\Seeder;
use App\Master;
use App\Restaurant;
use App\Dish;
use App\Review;

class SampleDataSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {   
      // -------------------------------Here are the masters, add here new masters---------------------------------------------------
        $masterburger = Master::create([
          'name'=> 'Master Burger',
          'description' =>'From April 29 to May 5, London, Ontario restaurants will fight to the death to prove who has the best Burger in town',
          'date' =>'April 29 to May 5',
          'price' =>'25 CAD',
          'city' =>'London,ON',
          'img_car'=>'burger_master.jpg',
          'img_hero'=>'burger_master_hero.jpg'

        ]);
        $mastersuhi = Master::create([
          'name'=> 'Master Sushi',
          'description'=>'Restaurants in London, Ontario will fight to the death for a week to prove who has the best sushi. Are you ready to participate?',
          'date'=>'Coming Soon',
          'price' =>'Coming Soon',
          'city' =>'London,ON',
          'img_car'=>'sushi_master.jpg',
          'img_hero'=>'sushi_master_hero.jpg'
        ]);
    // -------------------------here are the restaurants from each master------------------------------------------------------------------------------------------
        $burgerburger = Restaurant::create([
          'name' => 'Burger Burger',
          'address' => '633 Richmond st',
          'lat' =>'42.991571',
          'lng' => '-81.251406',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => 'Our hand-crafted burgers are made fresh in-house everyday with the perfect combination of sirloin, chuck and brisket. Our signature burgers are always sure to please, but we also love creating your custom projects.',
          'image_rest' => 'logo_burger-burger'
        ]);

        $thebungalow = Restaurant::create([
          'name' => 'The Bungalow',
          'address' => '910 Waterloo St',
          'lat' =>'43.002955',
          'lng' => '-81.250958',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => 'The Bungalow is nestled in the heart of London’s Old North. The restaurants style and cuisine, are designed for casual and convivial enjoyment. During the nicer weather spend some time enjoying a cold beverage outdoors on the relaxed, shaded patio.',
          'image_rest' => 'logo_the_bungalow'
        ]);

        $theworks = Restaurant::create([
          'name' => 'The Works',
          'address' => '145 King St',
          'lat' =>'42.982210',
          'lng' => '-81.249769',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => 'At The WORKS, we’re all about the Gourmet Burger. We eat it, sleep it and dream it. And we dream big. Real BIG. Because in our world SIZE MATTERS. ',
          'image_rest' => 'logo_works'
        ]);

        $princealbert = Restaurant::create([
          'name' => 'Prince Albert’s Dinner',
          'address' => '565 Richmond St',
          'lat' =>'42.989314',
          'lng' => '-81.250916',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => "Serving classic diner dishes at a great price, Prince Alberts Diner offers all your favourite classics. From burgers, to fries, to sandwiches, come stop by for a bite to eat with some friends! Order for the big game!",
          'image_rest' => 'logo_prince_albert'
        ]);

        $shmokeybbq = Restaurant::create([
          'name' => 'Shmokey’s BBQ',
          'address' => '1186 Frances St',
          'lat' =>'42.991311',
          'lng' => '-81.207674',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => "Come for the food, stay for the entertaining staff, and then come back again for the food because you’ll be addicted.",
          'image_rest' => 'logo_shmokey'
        ]);

        $paradisecream = Restaurant::create([
          'name' => 'Paradise Cream',
          'address' => '421 Richmond St',
          'lat' =>'42.984120',
          'lng' => '-81.250042',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => "Come for the food, stay for the entertaining staff, and then come back again for the food because you’ll be addicted.",
          'image_rest' => 'logo_paradise_cream'
        ]);

        $berniesbar = Restaurant::create([
          'name' => 'Bernies Bar & Grill',
          'address' => '1225 Wonderland Rd N',
          'lat' =>'43.005906',
          'lng' => '-81.305374',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => "Come for the food, stay for the entertaining staff, and then come back again for the food because you’ll be addicted.",
          'image_rest' => 'logo_bernies'
        ]);

        $jackastor = Restaurant::create([
          'name' => 'Jack Astor’s Bar & Grill',
          'address' => '88 Fanshawe Park Rd E',
          'lat' =>'43.027910',
          'lng' => '-81.279793',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => "We’re a restaurant. One that specializes in delicious food and great times. Our goal is to make you laugh. And depending on your hot sauce tolerance, cry.",
          'image_rest' => 'logo_jacks'
        ]);

        $londonburgers = Restaurant::create([
          'name' => 'London Burgers',
          'address' => '417 Dundas St',
          'lat' =>'42.987151',
          'lng' => '-81.236997',
          'province' => 'Ontario',
          'city' => 'London',
          'description' => "We’re a restaurant. One that specializes in delicious food and great times. Our goal is to make you laugh. And depending on your hot sauce tolerance, cry.",
          'image_rest' => 'logo_london_burgers'
        ]);

        // -------------------------here are the dishes--------------------------------------------------

        Dish::create([
          'name'=>'Siux Burger',
          'description'=>'The new creation of the masters of charcoal for the Burger Master is our Hot And Sexy Wagyu beef in brioche bread with smoked bacon, blue cheese, grilled onions, tomato, lettuce buds and chipotle honey',
          'images_dish'=>'siux_burger.jpg',
          'restaurant'=> 'Burger Burger',
          'master_id'=>$masterburger->id
        ]);

        Dish::create([
          'name'=>'Buffalo Burger',
          'description'=>'Chargrilled and topped with Oka cheese and grilled pineapple. Served on a sesame Kaiser.',
          'images_dish'=>'buffalo_burger.jpg',
          'restaurant'=> 'The Bungalow',
          'master_id'=>$masterburger->id
        ]);

        Dish::create([
          'name'=>'Taste of heaven',
          'description'=>'Kobe Style Wagyu beef patty, maple bacon, carm onions, arugula, W Sauce, on a black and white sesame bun.',
          'images_dish'=>'taste_heaven_burger.jpg',
          'restaurant'=> 'The Works',
          'master_id'=>$masterburger->id
        ]);

        Dish::create([
          'name'=>'The Fat Albert',
          'description'=> "This one's for the serious burger lover, double patty, bacon, cheddar, mozzarella, and sauteed mushrooms.",
          'images_dish'=>'fat_albert_burger.jpg',
          'restaurant'=> 'Prince Albert’s Dinner',
          'master_id'=>$masterburger->id
        ]);
        Dish::create([
          'name'=>'Beef Brisket',
          'description'=> "Shmokey’s takes the “Low and Slow” philosophy seriously. After a rub with a special blend of spices, all the meat is smoked for 20 hours to ensure it’s as tender and juicy as possible. ",
          'images_dish'=>'beef_brisket_burger.jpg',
          'restaurant'=> 'Shmokey’s BBQ',
          'master_id'=>$masterburger->id
        ]);

        Dish::create([
          'name'=>'Paradise burger',
          'description'=> "Shmokey’s takes the “Low and Slow” philosophy seriously. After a rub with a special blend of spices, all the meat is smoked for 20 hours to ensure it’s as tender and juicy as possible. ",
          'images_dish'=>'burger_paradise.jpg',
          'restaurant'=> 'Paradise Cream',
          'master_id'=>$masterburger->id
        ]);
        Dish::create([
          'name'=>'Bernie Mac',
          'description'=> "A half pound burger topped with sautéed onions, pulled pork, BBQ sauce and mixed cheese.",
          'images_dish'=>'bernie_mac.jpg',
          'restaurant'=>'Bernies Bar & Grill',
          'master_id'=>$masterburger->id
        ]);

        Dish::create([
          'name'=>'Holy Smoke Bbq Burger',
          'description'=> "Smoked bacon, American cheese, smoky BBQ sauce, crispyfried onions, pickled banana peppers, hickory mayo",
          'images_dish'=>'smoke_burger.jpg',
          'restaurant'=> 'Jack Astor’s Bar & Grill',
          'master_id'=>$masterburger->id
        ]);
        Dish::create([
          'name'=>'London Burger',
          'description'=> "The new  burger creation is the brioche bread with smoked bacon, grilled onions, tomato, lettuce buds and chipotle honey.",
          'images_dish'=>'london_burger.jpg',
          'restaurant'=>'London Burgers',
          'master_id'=>$masterburger->id
        ]);

      // -----------------------------------------here are the reviews----------------------------------------------------------------
        Review::create([
          'user_id'=>'3',
          'dish_id'=>'5',
          'review_comment'=>'OMG, is very juicy. The meat is on its point and is really taste it. I really recomend this burger.',
        ]);

        Review::create([
          'user_id'=>'2',
          'dish_id'=>'2',
          'review_comment'=>'Yumm-o! Everything was simply decadent. Everything I tried was bursting with flavor.',
        ]);

        Review::create([
          'user_id'=>'2',
          'dish_id'=>'3',
          'review_comment'=>'you’ll find amazingly tasty burgers, a cracking atmosphere and superb customer service. they are the best burgers around. [And] as brilliant as the burgers : the service.',
        ]);
        Review::create([
          'user_id'=>'2',
          'dish_id'=>'4',
          'review_comment'=>'I am never coming back here! The steak was a little dry. There were a lot of interesting decorations on the walls. Meh.',
        ]);

        Review::create([
          'user_id'=>'4',
          'dish_id'=>'2',
          'review_comment'=>'I had high hopes for this place, The steak was undercooked',
        ]);

        Review::create([
          'user_id'=>'3',
          'dish_id'=>'2',
          'review_comment'=>'the burgers are more expensive than McDonald`s but oh my are they ever worth it! my friend and i LOVE this place',
        ]);

        Review::create([
          'user_id'=>'3',
          'dish_id'=>'4',
          'review_comment'=>'Great burgers.Really can taste the burger. Fresh toppings. Love the grilled cheese top and bottom bun. Definitely recommend to friends.',
        ]);

        Review::create([
          'user_id'=>'2',
          'dish_id'=>'4',
          'review_comment'=>'Pro: Good burger with good choice of toppings. Con: Burger has a tendency to fall apart which results in flavor loss.',
        ]);

        Review::create([
          'user_id'=>'1',
          'dish_id'=>'2',
          'review_comment'=>'Best burger I`ve ever had. If you like food, you will like this place'
        ]);
    }
}
