import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['products'];

  connect() {
    console.log(this.element);
    console.log(this.productsTarget);
  }

  add_product(){
    console.log(this.productsTarget.firstElementChild.style.border = "4px solid green");
  }
}
