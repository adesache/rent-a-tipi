import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rent any kind of tent anywhere near you", "From small camping tents to luxury glamping"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
