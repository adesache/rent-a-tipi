const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');

  if (navbar) {

    if (document.querySelector(".home-banner")) {
      let scrollTarget = document.querySelector(".home-banner").offsetHeight - 56
      console.log(scrollTarget)
      window.addEventListener("scroll", () => {
        console.log(window.scrollY)
        if (window.scrollY >= scrollTarget ) {
          console.log("overflow scroll")
          document.querySelector(".tent-cards").style.overflow = "scroll"
        } else if (window.scrollY <= scrollTarget ) {
          console.log("overflow scroll")
          document.querySelector(".tent-cards").style.overflow = "unset"
        }
      })

      // window.addEventListener('scroll', () => {

      //   if (window.scrollY >= window.innerHeight ) {
      //     navbar.classList.add('navbar-lewagon-white');
      //   } else {
      //     navbar.classList.remove('navbar-lewagon-white');
      //   }
      // });

    } else {
      console.log('Hello')
    navbar.classList.add('navbar-lewagon-white');
    }
  }
}

export { initUpdateNavbarOnScroll };
