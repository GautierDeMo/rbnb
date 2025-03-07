import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="reset"
export default class extends Controller {
  static targets = ["textField", "button"];

  clear() {
    this.textFieldTarget.value = "";
    this.hideButton();
  }

  changeInput(event) {
    const input = event.currentTarget;
    const value = input.value;
    value === "" ? this.hideButton() : this.showButton();
    // this.buttonTarget.classList.toggle("d-none", value === "");
  }

  hideButton() {
    this.buttonTarget.classList.add("d-none");
  }

  showButton() {
    this.buttonTarget.classList.remove("d-none");
  }
}
