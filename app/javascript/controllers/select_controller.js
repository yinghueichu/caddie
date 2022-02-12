import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['products'];

  to_buy_product(event){
    // console.log(this.productsTarget.firstElementChild.style.border = "4px solid green");
    event.preventDefault();
    console.log(this.element);
    console.log(this.element.children[0].children[0].children[2].getAttribute("id"));
    const productId = this.element.children[0].children[0].children[2].getAttribute("id")
    const url = `/products/${productId}`;
    console.log(url);
    fetch(url, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
  }


  unexisting_product(event) {
    event.preventDefault();
    const url = `/product_to_create`;
    console.log(url);
    fetch(url, {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
  }
}
