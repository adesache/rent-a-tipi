const separateDates = () => {
  const submitDates = document.querySelector("#submit-dates");
  if (submitDates) {
    submitDates.addEventListener("click", (event) => {
      const dates = document.querySelector(".datepicker").value.split(" to ")
      document.querySelector("#booking_start_date").value = dates[0]
      document.querySelector("#booking_end_date").value = dates[1]
      document.querySelector(".booking_start_date").submit()
    })
  }
}

export {separateDates};
