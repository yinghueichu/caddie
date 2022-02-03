// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

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
  console.log(fabRipple);
  document.addEventListener('turbolinks:load', function () {
    var elems = document.querySelectorAll('.fixed-action-btn');
    var instances = M.FloatingActionButton.init(elems, 'top');
  });
}


//file picker
import $ from 'jquery';
window.jQuery = $;
window.$ = $;

// document.addEventListener('turbolinks:load', function () {
//   console.log("turbolinks ready!");
//   const realFileBtn = document.querySelector('#product_photo');
//   const customBtn = document.querySelector('#photo-placeholder');
//   const customText = document.querySelector('#file-text');

//   customBtn.addEventListener('click', function () {
//     realFileBtn.click();
//   })

//   console.log(realFileBtn.value);

//   realFileBtn.addEventListener("change", function () {
//     console.log(realFileBtn.files[0].name);
//     if (realFileBtn.files) {
//       customText.innerHTML = realFileBtn.files[0].name;
//     } else {
//       customText.innerHTML = "+ Photo";
//     }
//   });
// });


document.addEventListener('DOMContentLoaded', function () {
  console.log("DOMContentLoaded");
  const realFileBtn = document.querySelector('#product_photo');
  const customBtn = document.querySelector('#photo-placeholder');
  const customText = document.querySelector('#file-text');
  const previewContainer = document.querySelector('#imagePreview');
  const previewImage = previewContainer.querySelector('.image-preview__image');
  const previewDefaultText = previewContainer.querySelector('.image-preview__text');


  previewContainer.addEventListener('click', function () {
    realFileBtn.click();
  })

  realFileBtn.addEventListener("change", function () {
    const file = realFileBtn.files[0];

    if (file) {
      customText.innerHTML = file.name;
      const reader = new FileReader();
      previewDefaultText.style.display = 'none';
      previewImage.style.display = 'block';
      reader.addEventListener('load', function() {
        console.log(this);
        previewImage.setAttribute('src', this.result);
      });
      reader.readAsDataURL(file);

    } else {
      customText.innerHTML = "+ Photo";
      previewImage.style.display = 'none';
    }
  });
});



// $('#photo-placeholder').click(function () {
//   $('#product_photo').trigger('click');
// });
// var selectedFile = document.getElementById("product_photo").files[0];
// console.log(selectedFile);

// $('#product_photo').val(selectedFile);
