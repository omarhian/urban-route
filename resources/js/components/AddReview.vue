<template>
    <div class="reviews">

                         <h3>How does it taste?</h3>
                         <form method="post" action= "reviews/review/add/" enctype="multipart/form-data">
                           {{ csrf_field() }}
                           <div class="form-group">
                             <label for="Textarea"></label>
                             <textarea type="textarea" class="col-4 col-form-label" name="review_comment" id="review_comment" value=":id='review_comment'" placeholder="Write your expirience here"></textarea><br>

                           </div>
                           
                           <input type="hidden" name="dish_id" id="dish_id" value=dish.id><br>

                           <button type="submit" class="btn btn-primary">Submit</button>

                         </form>

                         <p>
                           @if($errors->any())
                             <h3>some errors were found:</h3>
                              <ul>
                                @foreach($errors->all() as $error)
                              <li>{{ $error }}</li>
                                @endforeach
                              </ul>
                          @endif
                         </p>
     </div>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>






