const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');

  if (navbar) {

    if (window.location == "http://localhost:3000/" || window.location == "https://rent-a-tipi.herokuapp.com/") {
      window.addEventListener('scroll', () => {

        if (window.scrollY >= window.innerHeight ) {
          navbar.classList.add('navbar-lewagon-white');
        } else {
          navbar.classList.remove('navbar-lewagon-white');
        }
      });

    } else {
      console.log('Hello')
    navbar.classList.add('navbar-lewagon-white');
    }
  }
}

export { initUpdateNavbarOnScroll };
