

require('./bootstrap');

window.Vue = require('vue');
window.Vue = require('vue-router').default;
import Vue from 'vue';

import VueRouter from 'vue-router';
import * as VueGoogleMaps from 'vue2-google-maps';
import VueSweetalert2 from 'vue-sweetalert2';

const options = {
  confirmButtonColor: '#5D9BA6',
  cancelButtonColor: '#ff7674'
}
Vue.use(VueSweetalert2);
 
Vue.use(VueGoogleMaps, {
  load: {
    key: '',
//     libraries: 'places', // This is required if you use the Autocomplete plugin
//     // OR: libraries: 'places,drawing'
//     // OR: libraries: 'places,drawing,visualization'
//     // (as you require)
 
//     //// If you want to set the version, you can do so:
//     // v: '3.26',
  },
 
//   //// If you intend to programmatically custom event listener code
//   //// (e.g. `this.$refs.gmap.$on('zoom_changed', someFunc)`)
//   //// instead of going through Vue templates (e.g. `<GmapMap @zoom_changed="someFunc">`)
//   //// you might need to turn this on.
//   // autobindAllEvents: false,
 
//   //// If you want to manually install components, e.g.
//   //// import {GmapMarker} from 'vue2-google-maps/src/components/marker'
//   //// Vue.component('GmapMarker', GmapMarker)
//   //// then disable the following:
//   // installComponents: true,
})




const Review = Vue.component('Review', require('./components/Review.vue')).default;
 const Home = Vue.component('Home', require('./components/Home.vue').default);
// const AddReview = Vue.component('Addreview', require('./components/AddReview.vue').default);
const Master = Vue.component('Master', require('./components/Master.vue').default);
// const RouteMap = Vue.component('routemap', require('./components/RouteMap.vue').default);
const RouteMap = Vue.component('RouteMap', require('./components/RouteMap.vue').default);


const routes = [
    {
    name: 'Master',
    path: '/masters/show/:id',
    component: Master
    },
    {
        name: 'Home',
        path: '/',
        component: Home
        },
        {
          name: 'Review',
          path: '/dish/show/:id',
          component: Review
          }

];


Vue.use(VueRouter)

const router = new VueRouter({ mode: 'history', routes: routes});


new Vue(
        Vue.util.extend(
      {router},
       
    )
).$mount ('#app');
