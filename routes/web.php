<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/{vue_capture?}', function () {
    return view('welcome');
})->where('vue_capture','[\/\w\.-]*');

// //Show all master
// Route::get('/masters', 'MasterController@getAllMasters');

// Route::get('/masters/show/{id}', 'MasterController@getOneMaster');
// // Search reastuarants
// Route::get('/restaurants/search/{str}', 'RestaurantController@searchRestaurants');

// Route::get('/search_results/{str}', 'RestaurantController@searchRestaurants');
// //add a review
// Route::post('/reviews/review/add','ReviewController@addReview');

// Route::get('/dish/show/{id}','DishController@getOneDish');

// Route::get('/dish/show', 'DishController@getAllRest');

