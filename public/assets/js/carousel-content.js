$(document).ready(function(){          
  $('.owl-carousel').owlCarousel({
      loop:true,
      margin: 20,
      autoplay:true,
      autoplayTimeout:4000,
      responsiveClass:true,
      responsive:{
          0:{
              items:1,
              nav:true,
              navText: ["Ant.","Sig."],
              loop: true
          },
          600:{
              items:2,
              nav:true,
              navText: ["Ant.","Sig."],
              loop: true
          },
          1000:{
              items:3,
              nav:true,
              navText: ["Anterior","Siguiente"],
              loop:true
          },
          1200:{
            items: 4,
            nav:true,
            navText: ["Anterior","Siguiente"],
            loop:true
          }
      }
  })
});