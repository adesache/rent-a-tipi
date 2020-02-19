//= require jquery
//= require jquery_ujs
require("turbolinks").start()
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")
require("turbolinks").start()

import "bootstrap";
// import {} from "jquery-ujs"
import { initUpdateNavbarOnScroll } from '../components/navbar';
//= require date_wrapper
import flatpickr from 'flatpickr';
import { initMapbox } from '../plugins/init_mapbox';
import "flatpickr/dist/themes/airbnb.css";
import '../plugins/flatpickr';

flatPicker();


const submitDates = document.querySelector("#submit-dates");
if (submitDates) {
  submitDates.addEventListener("click", (event) => {
    const dates = document.querySelector(".datepicker").value.split(" to ")
    document.querySelector("#booking_start_date").value = dates[0]
    document.querySelector("#booking_end_date").value = dates[1]

    document.querySelector(".booking_start_date").submit()
  })
}

// mapbox

document.addEventListener('turbolinks:load', () => {
  initUpdateNavbarOnScroll();
  initMapbox();
})

