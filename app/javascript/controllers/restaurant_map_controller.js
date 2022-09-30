import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="restaurant-map"
export default class extends Controller {

  connect() {
    console.log("hello");
    // console.log(ENV['API_KEY'])
  }
}
