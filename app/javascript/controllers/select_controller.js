import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['products', 'productCount'];

  to_buy_product(event){
    event.preventDefault();


    const cardStyle = event.currentTarget.querySelector(".card-category").style
    if (cardStyle.border == '1px solid green')
    cardStyle.border = "none"
    else
    cardStyle.border = '1px solid green'
    console.log(event.currentTarget)
    const productId = event.currentTarget.dataset.productId;
    console.log(productId)
    const url = `/products/${productId}`;
    fetch(url, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
    .then(res=> res.json())
    .then(data => {
      document.getElementById("number-products-bought-text").innerText = data.count
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
