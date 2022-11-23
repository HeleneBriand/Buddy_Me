import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cards"
export default class extends Controller {
  connect() {
    console.log("Hello from our first Stimulus controller")
  }
}
