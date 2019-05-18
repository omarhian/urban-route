<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Master;
class MasterController extends Controller
{
  public function getAllMasters() {
    $masters = Master::select()->get();
    return $masters;
    // return view('masters',['title' => ' Master List', 'masters' => $masters]);
  }

  public function getOneMaster($id) {
    	$master = Master::select()->where('id', $id)->with('dishes')->first(); //name of the function
      // $master = Master::select()->where('id', $id)->with('dishes');
      // return view('author_profile',['title' => 'Author Profile', 'author' => $author]);
      //  $master = Master::with('restaurants')->get();
      return $master;
    }
}
