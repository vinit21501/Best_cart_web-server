function product_price() {
    var products = document.getElementsByClassName("quantity")
    var total = 0;
    for (var i = 0; i < products.length; ++i) {
        var p_id = products[i].name;
        document.getElementsByClassName('total' + p_id)[0].innerHTML = products[i].value * document.getElementsByClassName('price' + p_id)[0].innerHTML;
        total = total + document.getElementsByClassName('total' + p_id)[0].innerHTML * 1;
    }
    document.getElementsByClassName('cart_total')[0].innerHTML = total;
}
window.onload = product_price;