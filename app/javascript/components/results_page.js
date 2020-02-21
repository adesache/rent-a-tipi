const resultsPage = () => {
  const searchClick = document.querySelector(".search-bar");
  if (searchClick) {
    searchClick.addEventListener("submit", (event) => {
      const tentList = document.querySelector("#tent-list");
      tentList.scrollIntoView();
    })
  }
}

export {resultsPage};
