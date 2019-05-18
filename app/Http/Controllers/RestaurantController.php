<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Restaurant;
use App\Dish;
class RestaurantController extends Controller
{
    public function searchRestaurants($str) {
      $results = Restaurant::select()->where('name', 'like','%'.$str.'%')->get();
      return $results;
      // return view ('search_results',[Restaurant=>$results]);
    }

    public function getAllRestaurants() {
      // $restaurants = Restaurant::select()->get();
      $restaurants = Restaurant::select()->get();
      // $restaurants = Restaurant::select()->where('id', $id)->with('dish')->first();
      return $restaurants;
      // return view('masters',['title' => ' Master List', 'masters' => $masters]);
    }
}
