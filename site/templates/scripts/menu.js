window.addEventListener("DOMContentLoaded", () => {
        // let nav = document.getElementById("nav");
        let switchitems = document.getElementsByClassName("dropdown");
        for (let index = 0; index < switchitems.length; index++) {
            switchitems[index].addEventListener("click", (e) => {
                e.stopPropagation();
                // debugger;
                e.originalTarget.parentElement.classList.toggle("open");
                // e.preventDefault();
              });
        }
  
    $(".start").hide();
  
    document.getElementById("openClose").addEventListener("click", () => {
      let duration = 500;
      $(".switchIcon").toggle(100);
      $(".menu").toggleClass("hidefon");
    });

  });