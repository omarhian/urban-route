<?php

namespace App;


use Illuminate\Database\Eloquent\Model;
use App\Dish;

class Restaurant extends Model
{
  


  protected $fillable = [
      'review_comment',
  ];

  public function dish() {
    return $this->belongsTo('App\Dish');
  }
}
