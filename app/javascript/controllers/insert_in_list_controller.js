import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="insert-in-list"
export default class extends Controller {
  static targets = ["items", "form", "noReviewMsg"]

  connect() {
    // console.log(this.element)
    // console.log(this.itemsTarget)
    // console.log(this.formTarget)
    console.log(this.noReviewMsgTarget)
  }

  send(event) {
    event.preventDefault();
    const url = this.formTarget.action;
    const options = {
      method: "POST",
      headers: {"Accept": "application/json", },
      body: new FormData(this.formTarget)
    }

    fetch(url, options)
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      if (data.my_inserted_item) {
        // this.noReviewMsgTarget.classList.add("d-none");
        this.itemsTarget.insertAdjacentHTML('beforeend', data.my_inserted_item)
      }
      this.formTarget.outerHTML = data.my_form
    })
  }
}
