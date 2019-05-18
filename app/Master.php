<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Dish;

class Master extends Model
{
  public function dishes() {
    return $this->hasMany('App\Dish');
  }

  

}
