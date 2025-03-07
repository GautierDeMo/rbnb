import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reset"
export default class extends Controller {
  static targets = ["textField"]

  clear() {
    this.textFieldTarget.value = ""
  }
}
