import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="restaurant-map"
export default class extends Controller {

  connect() {
    console.log("hello");
    mapboxgl.accessToken = 'pk.eyJ1Ijoib2xpLXZpYSIsImEiOiJjbDZnaDVmaWEwY2s0M2ludm5sN2ZnNDUzIn0.PvI0ecHVVP54pqC6ZHQ00w';

    // get address with target
    // inject it in the url
    const url = "https://api.mapbox.com/geocoding/v5/mapbox.places/{search_text}.json
    // do fetch with it to get coordinates
    // inject coordinates in map

    const map = new mapboxgl.Map({
    container: 'map', // container ID
    // Choose from Mapbox's core styles, or make your own style with Mapbox Studio
    style: 'mapbox://styles/mapbox/streets-v11', // style URL
    center: [-0.57, 44.84], // starting position [lng, lat]
    zoom: 12, // starting zoom
    projection: 'globe' // display the map as a 3D globe
    });

    const marker1 = new mapboxgl.Marker()
    .setLngLat([-0.57, 44.84])
    .addTo(map);
  }
}
