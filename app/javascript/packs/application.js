//= require jquery
//= require jquery_ujs
require("turbolinks").start()
require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")

import "bootstrap";
// import {} from "jquery-ujs"
import { initUpdateNavbarOnScroll } from '../components/navbar';

// document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initUpdateNavbarOnScroll();
// });
