import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="review"
export default class extends Controller {
  static targets = ['form']

  fire() {
    this.formTarget.classList.toggle('d-none')
  }
}
