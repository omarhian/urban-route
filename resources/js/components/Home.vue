<template>
<div>
    <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item" v-for="(master,index) in masters" :class="{ active: index==0 }">
        <!-- <img src="/images/sushi_master_2.jpg" class="d-block  w-100" alt="..."> -->
         <img :src="`/images/${master.img_car}`" class="card-img  w-100" alt="Two juicy burgers">
        <div class="carousel-caption d-none  d-md-block">
          <h5>{{master.name}}</h5>
          <p>{{master.description}}</p>
          <router-link v-bind:to="`/masters/show/${master.id}`" class="btn btn-warning">Enter Route</router-link>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  </div>




    <div class="test">
        <h2>Current Master</h2>
        <div class = "card text-white" v-for="master in masters">
        <img :src="`/images/${master.img_mob}`" class="card-img" alt="Two juicy burgers">
        <div class="card-img-overlay text">
          <h3>{{master.name}}</h3>
          <p>{{master.description}}</p>
        <router-link v-bind:to="`/masters/show/${master.id}`" class="btn btn-warning">Enter Route</router-link>
        </div>
        <!-- <p> {{master.id}}</p> -->
        <!-- <a href="/masters/show/${id}" class="btn btn-warning">star route</a> -->
         <!-- <a v-bind:href="`/masters/show/${master.id}`" class="btn btn-warning">star route {{master.id}}</a> -->
         
        <!-- <router-link :to"`/masters/show/${master.id}`">start route</router-link> -->
        </div>
    </div>
  <div class="master_soon">
      <h2>Enjoy soon</h2>
    <div class="card text-white card_soon">
   <img src="/images/master_pizza.jpg" class="card-img hero_img" alt="Two juicy burgers">
    <div class="card-img-overlay">
      <h5 class="card-title hero soon">Master Pizza</h5>
     <h5 class="card-title hero soon com">coming soon</h5>
    </div>
    </div>
     <div class="card text-white  card_soon_two">
       <img src="/images/master_taco.jpg" class="card-img hero_img" alt="Two juicy burgers">
       <div class="card-img-overlay ">
         <h5 class="card-title hero soon">Master Taco</h5>
         <h5 class="card-title hero soon com">coming soon</h5>
       </div>
     </div>
     <div class="card text-white  card_soon_three">
       <img src="/images/master_hotdog.jpg" class="card-img hero_img" alt="Two juicy burgers">
       <div class="card-img-overlay ">
         <h5 class="card-title hero soon">Master HotDog</h5>
         <h5 class="card-title hero soon com">coming soon</h5>
       </div>
     </div>
  </div>
</div>
</template>

<style >
  
</style>

<script>
import axios from 'axios'

export default {
   data(){
       return {
           masters: []
               
       }
   },

   created() {
       this.getMasters();
       
       

   },
   methods: {
       getMasters() {
           axios.get(`/api/masters`)
           .then(result =>{
        // console.log(result.data)
        this.masters = result.data
       });
       }

   
   }

}

</script>
