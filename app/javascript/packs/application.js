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
import { loadDynamicBannerText } from '../components/banner';
import flatpickr from 'flatpickr';
import { initMapbox } from '../plugins/init_mapbox';
import "flatpickr/dist/themes/airbnb.css";
import { flatPicker } from '../plugins/flatpickr';
import { separateDates } from '../components/date';
// autocomplete
import {initAutocomplete} from '../plugins/init_autocomplete';
import {resultsPage} from '../components/results_page';


document.addEventListener('turbolinks:load', () => {
  initAutocomplete();
  initUpdateNavbarOnScroll();
  initMapbox();
  flatPicker();
  separateDates();
  initAutocomplete();
  loadDynamicBannerText();
  resultsPage();
  const ctnIndex = document.querySelector(".container-index")
  if (ctnIndex) {
    if (ctnIndex.dataset.scroll === "true") {
      setTimeout(function(){ ctnIndex.scrollIntoView({behavior: "smooth"}); }, 500);
    }
  }
})

