import mapboxgl from 'mapbox-gl';

const fitMapToMarkers = (map, markers) => {
  if (markers) {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 60, maxZoom: 13, duration: 0 });
  };
};


const addMarkersToMap = (map, markers) => {
  if (markers) {
  markers.forEach((marker) => {

    // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '50px';
    element.style.height = '50px';

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
    });
  };
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
  const markers = JSON.parse(mapElement.dataset.markers);
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    addMarkersToMap (map, markers);
    fitMapToMarkers (map, markers);
  };
};


export { initMapbox };


