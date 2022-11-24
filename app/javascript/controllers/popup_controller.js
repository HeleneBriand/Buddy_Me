import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  connect() {
  }
}

updatepopup() {
  if (window.scrollY >= window.innerHeight) {
    this.element.classList.add("flash")
  } else {
    this.element.classList.remove("navbar-lewagon-white")
  }
}
