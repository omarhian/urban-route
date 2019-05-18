<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dish;
use App\Restaurant;
use App\Master;
class DishController extends Controller
{
    public function getOneDish($id) {
    	$dish = Dish::select()->where('id', $id)->with('reviews')->with('restaurant')->first(); //name of the function
    	 // return view('author_profile',['title' => 'Author Profile', 'author' => $author]);
      return $dish;
    }
    
    // public function getNameRest($id) {
    // 	$dish = Dish::select()->where('id', $id)->with('restaurants')->first(); //name of the function
    // 	 // return view('author_profile',['title' => 'Author Profile', 'author' => $author]);
    //   return $dish;
    // }
    // $dish = Dish::with('restaurants')->get();
    public function getAllRest($id){
    $dish = Dish::select()->where('id',$id)->with('restaurant_id',$id)->get();
    return $dish;
    }

    public function getAllfunction($id){
      $dish = Dish::select()->where('id',$id)->with('restaurant')->with('master')->first();
      // $dish = Master::select()->where('id',$id)->with('dishes')->with('restaurants')->first();
      return $dish;
    }
}
