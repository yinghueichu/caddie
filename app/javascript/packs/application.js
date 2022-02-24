// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "controllers"


Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "extensions/turbolinks";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

import 'materialize-css/dist/js/materialize';

//Floating action button
import { MDCRipple } from '@material/ripple';

var fab = document.querySelector('.mdc-fab');

if (fab) {
  const fabRipple = new MDCRipple(document.querySelector('.mdc-fab'));
  document.addEventListener('turbolinks:load', function () {
    var elems = document.querySelectorAll('.fixed-action-btn');
    var instances = M.FloatingActionButton.init(elems, 'top');
  });
}


//file picker
import $ from 'jquery';
window.jQuery = $;
window.$ = $;

document.addEventListener('turbolinks:load', function () {
  console.log("turbolinks ready!");

  const btnAll = document.querySelector('#btnAll');
  const btnToBuy = document.querySelector('#btnToBuy');
  const btnBought = document.querySelector('#btnBought');

  const navAll = document.querySelector('#navAll');
  const navToBuy = document.querySelector('#navToBuy');
  const navBought = document.querySelector('#navBought');


  if (btnAll) {
    btnAll.focus();
    btnAll.click();
    navToBuy.style.display = "none";
    navBought.style.display = "none";

    btnAll.addEventListener("click", function() {
      navAll.style.display = "block";
      navToBuy.style.display = "none";
      navBought.style.display = "none";
    })

    btnToBuy.addEventListener("click", function () {
      navAll.style.display = "none";
      navToBuy.style.display = "block";
      navBought.style.display = "none";
    })

    btnBought.addEventListener("click", function () {
      navAll.style.display = "none";
      navToBuy.style.display = "none";
      navBought.style.display = "block";
    })
  }

  const nav = document.querySelector('.nav');
  const navBtn = document.querySelector('#btnNav');
  const overlay = document.querySelector('.nav__overlay');
  const navBack = document.querySelector('#nav__link_back');

  if (nav) {
    navBtn.addEventListener("click", function () {
      nav.classList.add("nav--open");
    })

    overlay.addEventListener("click", function () {
      nav.classList.remove("nav--open");
    })

    navBack.addEventListener("click", function () {
      nav.classList.remove("nav--open");
    })
  }


  const realFileBtn = document.querySelector('#product_photo');
  const previewContainer = document.querySelector('#imagePreview');
  const previewDefaultText = previewContainer.querySelector('.image-preview__text');
  const previewImage = previewContainer.querySelector('.image-preview__image');

  if (previewImage) {
    previewContainer.addEventListener('click', function () {
      realFileBtn.click();
    })

    realFileBtn.addEventListener("change", function () {
      const file = realFileBtn.files[0];

      if (file) {
        const reader = new FileReader();
        previewDefaultText.style.display = 'none';
        previewImage.style.display = 'block';
        reader.addEventListener('load', function () {
          previewImage.setAttribute('src', this.result);
        });
        reader.readAsDataURL(file);

      } else {
        previewImage.style.display = 'none';
      }
    });
  }




});


document.addEventListener('DOMContentLoaded', function () {
  console.log("DOMContentLoaded");
  const btnAll = document.querySelector('#btnAll');
  const btnToBuy = document.querySelector('#btnToBuy');
  const btnBought = document.querySelector('#btnBought');

  const navAll = document.querySelector('#navAll');
  const navToBuy = document.querySelector('#navToBuy');
  const navBought = document.querySelector('#navBought');


  if (btnAll) {
    btnAll.focus();
    btnAll.addEventListener("click", function () {
      navAll.style.display = "block";
      navToBuy.style.display = "none";
      navBought.style.display = "none";
    })

    btnToBuy.addEventListener("click", function () {
      navAll.style.display = "none";
      navToBuy.style.display = "block";
      navBought.style.display = "none";
    })

    btnBought.addEventListener("click", function () {
      navAll.style.display = "none";
      navToBuy.style.display = "none";
      navBought.style.display = "block";
    })
  }
});
