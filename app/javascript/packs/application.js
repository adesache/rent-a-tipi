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
import flatpickr from 'flatpickr'
import "flatpickr/dist/themes/airbnb.css"
import '../plugins/flatpickr'

flatpickr('.datepicker', {
  altInput: true,
  altFormat: "F j, Y",
  dateFormat: "Y-m-d",
  inline: true,
  mode: "range",
  dateFormat: "Y-m-d",
  minDate: "today",
  onChange: function(selectedDates, dateStr, instance){
    console.log(selectedDates)
    if (selectedDates.length > 1) {
      const days = (selectedDates[1] - selectedDates[0]) / (1000*60*60*24)
      const price = parseInt(document.querySelector(".price-per-day").dataset.price, 10)
      document.querySelector(".total-price").innerText = `Total Price: ${(days * price)}€ `
      document.querySelector(".total-price").style.display ="block"
    }
  } // defaultDate: ["2020-02-19", "2021-12-31"]

})

document.querySelector("#submit-dates").addEventListener("click", (event) => {
  const dates = document.querySelector(".datepicker").value.split(" to ")
  document.querySelector("#booking_start_date").value = dates[0]
  document.querySelector("#booking_end_date").value = dates[1]

  document.querySelector(".booking_start_date").submit()
})

// mapbox
import { initMapbox } from '../plugins/init_mapbox';


document.addEventListener('turbolinks:load', () => {
  initUpdateNavbarOnScroll();
  initMapbox();
})
