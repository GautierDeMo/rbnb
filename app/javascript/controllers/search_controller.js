import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form", "results"]

  fire(e) {
    e.preventDefault() // Prevent default form submission behavior

    const formData = new FormData(this.formTarget) // Get form data
    const url = new URL(this.formTarget.action) // Get the form's action URL

    // Convert the FormData to query parameters
    const queryParams = new URLSearchParams(formData).toString()

    // Append the query parameters to the URL
    url.search = queryParams

    // Perform the fetch request
    fetch(url, {
      method: "GET",
      headers: {
        "Accept": "application/json", // Tell the server we expect JSON
      },
    })
      .then(response => response.json()) // Parse the response as JSON
      .then(data => {
        // If the response contains new HTML (like for Turbo update)
        if (data.html) {
          // Update the part of the page that needs to change (e.g., the dreams list)
          this.resultsTarget.innerHTML = data.html

          // Optionally, update the browser's URL without reloading
          history.pushState(null, '', url)
        }
      })
      .catch(error => {
        console.error("Error:", error) // Handle any errors
      })
  }
}
