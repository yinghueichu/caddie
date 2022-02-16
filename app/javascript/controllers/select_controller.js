import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['products', 'form', 'list', 'searchInput'];

  connect() {
    console.log(this.formTarget);
    console.log(this.listTarget);
    console.log(this.searchInputTarget);
  }

  to_buy_product(event){
    // console.log(this.productsTarget.firstElementChild.style.border = "4px solid green");
    event.preventDefault();
    const productId = event.currentTarget.dataset.productId;
    const url = `/products/${productId}`;
    fetch(url, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
  }

  insert_text(event){
    console.log(this.searchInputTarget.value);
    console.log(document.querySelector('#new-product').innerText);
    document.querySelector('#new-product').innerHTML = this.searchInputTarget.value;
  }


  unexisting_product(event) {
    event.preventDefault();
    const url = `/product_to_create`;
    fetch(url, {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
  }
}
