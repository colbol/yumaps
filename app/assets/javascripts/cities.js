    mapboxgl.accessToken = 'pk.eyJ1Ijoic2FsaW1jaG9yZmkiLCJhIjoiY2o0azBlenFpMGV6ajJ3cWhmOWwzeHBzcyJ9.9kmFrJOa12m_9PxIvAJatQ';
    var map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/salimchorfi/cj58ljlw553ep2tmn2rd6787s',
      center: [-73.694, 45.546],
      zoom: 10.3 // starting zoom
    });


      // map.scrollZoom.disable();


      map.on('load', function () {
        map.addSource("states", {
          "type": "geojson",
          "data": geo
        });

        map.addLayer({
          "id": "state-fills",
          "type": "fill",
          "source": "states",
          "layout": {},
          "paint": {
            "fill-color": "#627BC1",
            "fill-opacity": 0.5
          }
        });

        map.addLayer({
          "id": "state-borders",
          "type": "line",
          "source": "states",
          "layout": {},
          "paint": {
            "line-color": "#627BC1",
            "line-width": 2
          }
        });

        map.addLayer({
          "id": "state-fills-hover",
          "type": "fill",
          "source": "states",
          "layout": {},
          "paint": {
            "fill-color": "#627BC1",
            "fill-opacity": 1
          },
          "filter": ["==", "FEDNAME", ""]
        });

        map.addLayer({
          "id": "neighbor",
          "type": "symbol",
          "source": "states",
          "layout": {
            "text-field": ["==", "FEDNAME", ""]
          }

        });

    // When the user moves their mouse over the states-fill layer, we'll update the filter in
    // the state-fills-hover layer to only show the matching state, thus making a hover effect.
    // map.on("mousemove", "state-fills", function(e) {
    //     map.setFilter("state-fills-hover", ["==", "FEDNAME", e.features[0].properties.FEDNAME]);
    //     console.log(e.features)
    // });


    // Reset the state-fills-hover layer's filter when the mouse leaves the layer.
//     map.on("mouseleave", "state-fills", function() {
//         map.setFilter("state-fills-hover", ["==", "FEDNAME", ""]);
//     });
// });

    // map.on('mousemove', function (e) {

    //       map.addLayer({
    //           "id": "neighbor",
    //           "type": "symbol",
    //           "source": "states",
    //           "layout": {
    //             "text-field": "Hello"
    //           }

    //     });
    // });

    map.on('click', 'state-fills', function (e) {
      var centro = turf.centroid(e.features[0])
      new mapboxgl.Popup()

      .setLngLat(centro.geometry.coordinates)
      .setHTML(e.features[0].properties.FEDNAME)
      .addTo(map);
                // console.log(e.features[0].geometry);
                // console.log(centro.geometry.coordinates);
              });

        // Change the cursor to a pointer when the mouse is over the places layer.
        map.on('mouseenter', 'state-fills', function () {
          map.getCanvas().style.cursor = 'pointer';
        });

        // Change it back to a pointer when it leaves.
        map.on('mouseleave', 'state-fills', function () {
          map.getCanvas().style.cursor = '';
        });
      });
