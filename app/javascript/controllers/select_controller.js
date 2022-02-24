import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['products', 'productCount'];

  to_buy_product(event){
    event.preventDefault();

    const cardStyle = event.currentTarget.querySelector(".card-category").classList
    // console.log(event.currentTarget.querySelector(".card-category"));

    if (cardStyle.value == 'card-category') {
      cardStyle.add("card-category-selected");
    } else {
      cardStyle.remove("card-category-selected");
    }

    const productId = event.currentTarget.dataset.productId;
    const url = `/products/${productId}/to_buy`;
    fetch(url, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() }
    })
    .then(res=> res.json())
    .then(data => {
      console.log(data);
      document.getElementById("number-products-bought-text").innerText = data.count;
      const productCountCircle = document.getElementById('number-products-bought');
      console.log(productCountCircle);
      productCountCircle.classList.add('product-added-effect');

      // console.log(document.querySelector("number-products-bought"));
      // document.querySelector("number-products-bought").classList.add("number-products-bought-bigger");
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
