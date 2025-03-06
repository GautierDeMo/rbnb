import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "button"]

  fire() {
    this.togglableElementTarget.classList.toggle("d-none");
    const mapController = this.application.getControllerForElementAndIdentifier(
      this.togglableElementTarget,
      "map"
    )
    if (mapController) {
      const mapInstance = mapController.getMapInstance()
      mapInstance.resize()
    }

    if (this.togglableElementTarget.classList.contains("d-none")) {
      this.buttonTarget.innerText = "Carte";
    } else {
      this.buttonTarget.innerText = "Liste";
    }
  }
}
