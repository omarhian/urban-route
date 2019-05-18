<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Restaurant;
class Dish extends Model
{

 protected $fillable = [
     'review_comment','user_id','dish_id'
 ];

    public function reviews() {
      return $this->hasMany('App\Review');
    }
   

    public function master() {
    	return $this->belongsTo('App\Master');
    }

    public function restaurant() {
    	return $this->belongsTo('App\Restaurant');
    }
}
