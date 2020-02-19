const flatPicker = () => {
  flatpickr('.datepicker', {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    inline: true,
    mode: "range",
    dateFormat: "Y-m-d",
    minDate: "today",
    onChange: function(selectedDates, dateStr, instance){
      console.log(selectedDates);
      if (selectedDates.length > 1) {
        const days = (selectedDates[1] - selectedDates[0]) / (1000*60*60*24)
        const price = parseInt(document.querySelector(".price-per-day").dataset.price, 10)
        document.querySelector(".total-price").innerText = `Total Price: ${(days * price)}€ `
        document.querySelector("#booking_total_price").value = (days * price)
        document.querySelector(".total-price").style.display ="block"
      }
    } // defaultDate: ["2020-02-19", "2021-12-31"]
  })
};

export { flatPicker };
