// document.addEventListener('DOMContentLoaded', async () => {
//     var SessionToken = window["app-bridge"].actions.SessionToken
//     var app = window.app;

//     app.dispatch(
//         SessionToken.request(),
//     );

//     // Save a session token for future requests
//     window.sessionToken = await new Promise((resolve) => {
//         app.subscribe(SessionToken.Action.RESPOND, (data) => {
//             resolve(data.sessionToken || "");
//         });
//     });

//     if (window.location.href.includes('/home')) {
//         var fetchProducts = function () {
//             var headers = new Headers({ "Authorization": "Bearer " + window.sessionToken });
//             return fetch("/products", { headers })
//                 .then(response => response.json())
//                 .then(data => {
//                     var products = data.products;

//                     if (products === undefined || products.length == 0) {
//                         document.getElementById("products").innerHTML = "<br>No products to display.";
//                     } else {
//                         var list = "";
//                         products.forEach((product) => {
//                             var link = `<a target="_top" href="https://<%= @shop_origin %>/admin/products/${product.id}">`
//                             list += "<li>" + link + product.title + "</a></li>";
//                         });
//                         document.getElementById("products").innerHTML = "<ul>" + list + "</ul>";
//                     }
//                 });
//         }();
//     }
// })