// Entry point for the build script in your package.json
import Turbo from "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import flatpickr from "flatpickr";
import { init_flatpickr } from "./plugins/init_flatpickr";

document.addEventListener("turbo:load", () => {
  init_flatpickr(flatpickr);
})
