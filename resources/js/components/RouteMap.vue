<template>
  <GmapMap
  :center="{lat:43.000, lng:-81.273}"
  :zoom="10"
  map-type-id="satellite"
  style="width: auto; height: 160px">
  
  <GmapMarker
    :key="index"
    v-for="(m, index) in restaurants"
    :position="{lat: m.lat, lng: m.lng}"
    :clickable="true"/>
</GmapMap>
</template>

<script>
import {gmapApi} from 'vue2-google-maps'

    export default {
      computed: {
    google: gmapApi
  },
        data(){
          return{
            restaurants:[
               
              
            ]
             
          ,
            markers: [
              {
               position: {lat:`{{restaurants.lat}}`, lng:`{{restaurants.lng}}`}
              }
              // {
              //  position: {lat:43.002955, lng:-81.250958}
              // }
              ]
          };
        },
        created() {
       this.getRest();
   },
    methods: {
      
       getRest() {
          // let self = this;
          //  let id = this.$route.params.id
          axios.get(`/api/restaurants`)
           .then(result =>{
      //   console.log(result.data.dishes);
      this.restaurants = result.data
      // self.restaurants = result.data.restaurant
      console.log(result.data);
      // this.lat = result.data
      //  console.log(result.data.lat)
       
       });
       }
    }
    }
</script>
