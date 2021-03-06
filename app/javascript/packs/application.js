import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { initAutocomplete } from '../plugins/init_autocomplete';

initAutocomplete();

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!

flatpickr(".datepicker", {});

import { init_price_calculation } from '../components/price';

init_price_calculation();
