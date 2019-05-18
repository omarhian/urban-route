<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Review extends Model
{

  protected $fillable = [
      'review_comment','user_id','dish_id'
  ];

  public function dish() {
    return $this->belongsTo('App\Dish');
  }
 
}
