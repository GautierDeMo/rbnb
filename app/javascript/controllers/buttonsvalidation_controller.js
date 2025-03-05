import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="buttonsvalidation"
export default class extends Controller {
  static targets = ["validateBtn", "declineBtn"]

  connect() {
    console.log("hello")
  }

  validate() {
    this.validateBtnTarget.classList.add("d-none");
    this.declineBtnTarget.classList.add("d-none");
    this.declineBtnTarget.insertAdjacentHTML("beforeend", "<% booking.archived! %>");
  }

  decline() {
    this.validateBtnTarget.classList.add("d-none");
    this.declineBtnTarget.classList.add("d-none");
  }

}
