<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
Route::get('/masters', 'MasterController@getAllMasters');

Route::get('/masters/show/{id}', 'MasterController@getOneMaster');

// Search reastuarants
Route::get('/restaurants/search/{str}', 'RestaurantController@searchRestaurants');
Route::get('/restaurants', 'RestaurantController@getAllRestaurants');

Route::get('/search_results/{str}', 'RestaurantController@searchRestaurants');
//add a review
Route::post('/reviews/review/add/','ReviewController@addReview');

Route::get('/dish/show/{id}','DishController@getOneDish');
//dishes
Route::get('/dish/show', 'DishController@getAllRest');
Route::get('/dish/{id}', 'DishController@getAllfunction');


