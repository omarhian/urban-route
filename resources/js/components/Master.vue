<template>
<div class="top">
 <div class="card bg-dark text-white">
   <img :src="`/images/${master.img_hero}`" class="card-img hero_img" alt="Two juicy burgers">
<!-- <img class="card-img hero_img" src="/images/sushi_master_2.jpg" alt="">    -->
    <div class="card-img-overlay">
      <h5 class="card-title hero">Welcome to Master Burger</h5>
    </div>
    </div>
<div class="body">
      <div class="cards tall">
        <div class="master_name">
          <h2>{{master.name}}</h2>
        </div>
        <div class="info_master">
          <div class="calendar">
            <h3><span>📅</span> {{master.date}}</h3>
          </div>
          <div class="location">
            <h3><span>📍</span>{{master.city}}</h3>
          </div>
          <div class="price">
            <h3><span>💲</span> {{master.price}}</h3>
          </div>
          <div class="more_info">
            <h3><span>ℹ️</span> More info</h3>
          </div>
          <div class="map">
               <RouteMap></RouteMap>
            <!-- <img src="/images/map.jpg" alt=""> -->
          </div>
          <div class="button start">
            <p>Start Route</p>
          </div>
        </div>
      
       </div>
   <!-- <div class="cards"> -->
      <ul class="master_cards">
       <li v-for="dish in dishes"  v-bind:value="dishes.id" >
        <div class=" cards info_dish ">
           <div class="rest_name">
           <h4 >{{dish.restaurant}}</h4>
           </div>
            <!-- <img class="img_dish" src="/images/siux_burger.jpg" alt=""> -->
            <div class="img_dish">
            <img  class="img_dish" :src="`/images/${dish.images_dish}`">
            </div>
             <div class="info">
           <h5 class="card-title dish_name">{{dish.name}}</h5>
           <p class="card-text copy_dish">{{dish.description}}</p>
          
           <!-- <img src="/images/${dish.images_dish.jpg}"> -->
           <!-- <img class="img_dish" :src="'dish.images_dish'"> -->
           <!-- <img v-bind:src="album.image[2]['#text']"> -->
           <div class="button_review">
             <router-link v-bind:to="`/dish/show/${dish.id}`" class="btn write">write review</router-link>
             </div>
           </div>
         </div>
       </li>
      </ul>
      
   </div>
</div>
</template>


<script>
import axios from 'axios'


export default {
   data(){
       return {
          master:{},
           dishes: [],
           restaurants:{
              'longitude':{},
              'latitude':{}
           }   
       }
   },

   created() {
       this.getDishes();
       this.getRest();


   },
   methods: {
      
       getDishes() {
         
          let id = this.$route.params.id
          axios.get(`/api/masters/show/${id}`)
           .then(result =>{
      //   console.log(result.data.dishes);
      this.master = result.data
      // console.log(result.data);
       this.dishes = result.data.dishes
      //  console.log(result.data.dishes.restaurant)
       
       });
       },
       getRest() {
          let self = this;
          let id = this.$route.params.id
         //  axios.get(`/api/dish/show/${id}`)
          axios.get(`/api/dish/show/${id}`)
           .then(result =>{
      //   console.log(result.data.dishes);
      self.restaurants = result.data.restaurant
      // console.log(result.data.restaurant.name)
      
      //  this.dishes = result.data.dishes.restaurant
       
       });
       }
     
   
   }

}

</script>
