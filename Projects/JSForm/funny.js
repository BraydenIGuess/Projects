const urlParams = new URLSearchParams(window.location.search);
const firstName = urlParams.get('fname');
const lastName = urlParams.get('lname');
const street = urlParams.get('street');
const city = urlParams.get('city');
const state = urlParams.get('state');
const zip = urlParams.get('zip');
const phoneNumber = urlParams.get('pnumber');
const email = urlParams.get('email');

function datastuff()
{
    const formDataElement = document.getElementById('formData');
    formDataElement.innerHTML = `
  ${firstName}<br> ${lastName}<br>
  ${street}<br> ${city}<br> ${state}<br> ${zip}<br>
  ${phoneNumber}<br>
  ${email}<br>
    `;
}