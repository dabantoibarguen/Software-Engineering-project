function toggleDarkMode(){
    document.body.classList.toggle("dark"); 
    x = document.getElementsByClassName("post");
    for (let i = 0; i<x.length; i++){
      x[i].classList.toggle("dark_post");
    }
    document.getElementById("head-com").classList.toggle("dark-head");
    document.getElementById("food").classList.toggle("dark-title");
}