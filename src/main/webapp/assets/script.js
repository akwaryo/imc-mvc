function refresh() {
    document.getElementById("message").innerHTML = '';

    var clean = document.querySelectorAll("input");
    for (var i = 0; i < clean.length; i++) {
        clean[i].value = "";        
    }
}