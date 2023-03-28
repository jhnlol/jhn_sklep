const Container = document.getElementById("container");
const fuel = document.getElementById("ilosc2");
document.getElementById("close").addEventListener("click", function(e){
    Container.style.display = "none";
    fetch(`https://${GetParentResourceName()}/close`, {
        method: "POST",
        headers: {
            "Content_type": "application/json; charset=UTF-8"
        },
        body: JSON.stringify({})
    });
})
document.getElementById("zakup1").addEventListener("click", function(e){
    Container.style.display = "none";
    fetch(`https://${GetParentResourceName()}/kupuje`, {
        method: "POST",
        headers: {
            "Content_type": "application/json; charset=UTF-8"
        },
        body: JSON.stringify({
            skrzynia: 1
        }),
    });
})
document.getElementById("zakup2").addEventListener("click", function(e){
    Container.style.display = "none";
    fetch(`https://${GetParentResourceName()}/kupuje`, {
        method: "POST",
        headers: {
            "Content_type": "application/json; charset=UTF-8"
        },
        body: JSON.stringify({
            skrzynia: 2
        }),
    });
})
document.getElementById("zakup3").addEventListener("click", function(e){
    Container.style.display = "none";
    fetch(`https://${GetParentResourceName()}/kupuje`, {
        method: "POST",
        headers: {
            "Content_type": "application/json; charset=UTF-8"
        },
        body: JSON.stringify({
            skrzynia: 3
        }),
    });
})
document.getElementById("zakup4").addEventListener("click", function(e){
    Container.style.display = "none";
    fetch(`https://${GetParentResourceName()}/kupuje`, {
        method: "POST",
        headers: {
            "Content_type": "application/json; charset=UTF-8"
        },
        body: JSON.stringify({
            skrzynia: 4
        }),
    });
})
window.addEventListener("message", function(event){
    let e = event.data;
    if(e.action=="show"){
        Container.style.display = "block";
        fuel.textContent = e.monety;
    }
})