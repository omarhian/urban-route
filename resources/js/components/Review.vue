<template>

<div class="reviews_page">
   <div class="card-deck left">
      <ul>
       <li> 
           
        <div class="cards cards_width" v-for="review in reviews">
           <h5 class="card-title">Mike</h5>
           <p class="card-text">{{review.review_comment}}</p>
           <p class="card-text"><small class="text-muted">last time </small></p>
         </div>
       </li>
      </ul>
      
   </div>
   <div class="cards cards_review">
      <div class="reviews">
        <h3>How does it taste?</h3>
        <h5>Rate the taste</h5>
         <fieldset class="rating">
            <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
            <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
            <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
            <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
            <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
            <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
            <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
            <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
            <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
            <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
        </fieldset>
         <form action= "/api/reviews/review/add/" method="post"  @submit="addReview()" enctype="multipart/form-data">
            <div class="form-group" >
                <label for="Textarea"></label>
                 <textarea type="textarea" class="form-control yellow-border" name="review_comment" id="review_comment" v-model="review.review_comment" placeholder="Write your expirience here" rows="3"></textarea><br>
            </div>
                <input type="hidden" name="_token" :value="csrf">
                <!-- <input type="hidden" name="dish_id" id="dish_id" value="" > -->
                <input type="hidden" name="dish_id" id="dish_id" :value="review.dish_id" >
                <input type="hidden" name="user_id" id="user_id" value='3'>
                <button type="submit" class="btn btn-primary submit" v-on:click="showAlert" >Submit</button>

         </form>

      </div>
  </div>
  </div>
</template>

<script>
  import axios from 'axios' 

    export default {
       data(){
       return {
           csrf: document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
           reviews: [],
           review:{
               
               user_id:'',
               dish_id:'',
               review_comment:''
           }
          
         
       }
   },

   created() {
       this.getReviews();
       

   },
   methods: {
      showAlert(){
            // Use sweetalert2
            this.$swal('Review added!!');
        },
       getReviews() {
         
          let id = this.$route.params.id
          axios.get(`/api/dish/show/${id}`)
           .then(result =>{
        console.log(result.data.reviews);
       this.reviews = result.data.reviews
       });
       },
       addReview(){
            let reviewid = this.$route.params.id;
            this.review.dish_id = reviewid;
            let convertForm = JSON.stringify(this.review);
            console.log(convertForm);
           axios(`/api/reviews/review/add/`,{
               method: 'post',
               body: convertForm,
               headers: {
                   
                   'content-type':'application/json',
                   
               }
           })
           .then(data => {
            //    this.reviews.review_comment = '';
            //    this.result.data.reviews.dish.id ='';
            //    this.getReviews();
            
           })
           
          
 
  .catch(function (error) {
    console.log(error);
   
  });
        //  alert('Review added');



       }
        
    


   
   }
    }
</script>
