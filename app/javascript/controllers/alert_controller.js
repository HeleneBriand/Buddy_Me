import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ["btn-resa"]
  connect() {
    console.log("Hello from ALERT controller")
  }

  updateAlert(event) {
    console.log("hello from updateAlert")
    (event.type.click)
      this.element.classList.add("flash-success")
    // } else {
    //   this.element.classList.remove("navbar-lewagon-white")
    // REPRENDRE ICI POUR LACTION CLIC}
  }
}
