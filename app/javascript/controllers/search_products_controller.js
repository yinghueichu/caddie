import { Controller } from "stimulus"

export default class extends Controller {

  static targets = ["form", "searchInput", "list"]

  connect() {
    console.log(this.element);
    console.log(this.formTarget);
    console.log(this.listTarget);
    console.log(this.searchInputTarget);
  }

  update(event) {
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    fetch(url, {headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
        const query = document.getElementById("query").value
        document.querySelector("a").attributes.href.value += `/?query=${query}`
      })
  }
}
