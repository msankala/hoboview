function panorama_dragend(e) {
	console.log(e);
	$("#panorama_lon").val(e.target._latlng.lng);
	$("#panorama_lat").val(e.target._latlng.lat);
}
