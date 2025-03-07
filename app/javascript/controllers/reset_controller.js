import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="reset"
export default class extends Controller {
  static targets = ["textField", "button"];

  clear() {
    this.textFieldTarget.value = "";
  }

  changeInput(event) {
    const input = event.currentTarget;
    const value = input.value;
    // value === '' ? this.buttonTarget.class.add('d-none') : this.buttonTarget.class.remove('d-none')
    this.buttonTarget.classList.toggle("d-none", value === "");
  }
}
