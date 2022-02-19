import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['products'];

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


  unexisting_product(event) {
    event.preventDefault();
    console.log(document)
    const url = `/product_to_create`;

    const typedValue = document.getElementById("query").value;
    let formData = new FormData();
    formData.append('product', JSON.stringify({name: typedValue}))
    fetch(url, {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: formData
    })
  }
}
