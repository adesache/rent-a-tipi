import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('tent_location');
  const queryInput = document.getElementById('search_query')
  if (addressInput) {
    places({ container: addressInput });
  }
  if (queryInput) {
    places({ container: queryInput });
  }
};

export { initAutocomplete };
