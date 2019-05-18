<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Review;
use App\Dish;
class ReviewController extends Controller
{   
	// public function getAllReviews() {

    // $review = Review::orderBy('created_at', 'desc')->get();
    // return $review;
	// }
    public function addReview() {
    $data = request()->input();
    	$validator = validator()->make($data,[
            'review_comment' => 'required'
    		]);

    if($validator->passes()) {
      
        $reviews = new Review
        // $review->review_comment=$request->review_comment;
        // $review->dish_id=$request->dish_id;
        ([
            'review_comment' => request()->input('review_comment'),
            'dish_id' => request()->input('dish_id'),
            'user_id' => request()->input('user_id')
    	]);
    	$reviews->save();
    	//  return 'review added!';
    	// return redirect('/reviews');
    }


    return redirect()->back()->withErrors($validator->errors())->withInput();
      }
}
