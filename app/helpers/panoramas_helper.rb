module PanoramasHelper
	def map(options)
		options[:tile_layer] ||= "http://{s}.tile.osm.org/{z}/{x}/{y}.png"
    options[:attribution] ||= "&copy; <a href=\"http://osm.org/copyright\">OpenStreetMap</a> contributors"
    options[:max_zoom] ||= 18
    options[:container_id] ||= 'map'

    output = []
    output << "<div id='#{options[:container_id]}'></div>" unless options[:no_container]
    output << "<script>"
    output << "var map = L.map('#{options[:container_id]}');"
    output << "map.setView([#{options[:center][:latlng][0]}, #{options[:center][:latlng][1]}], #{options[:center][:zoom]});"
    if options[:markers]
      options[:markers].each_with_index do |marker,i|
        output << "marker#{i} = L.marker([#{marker[:latlng][0]}, #{marker[:latlng][1]}]"
      	output << ", #{marker.slice(:draggable).to_json}" unless marker.slice(:draggable).empty?
      	output <<").addTo(map);"

        output << "marker#{i}.bindPopup('#{marker[:popup]}');" if marker[:popup]
      	output << "marker#{i}.on('drag', #{marker[:drag]});" if marker[:drag]
      	output << "marker#{i}.on('dragstart', #{marker[:dragstart]});" if marker[:dragstart]
      	output << "marker#{i}.on('dragend', #{marker[:dragend]});" if marker[:dragend]
      end
    end

    if options[:circles]
      options[:circles].each do |circle|
        output << "L.circle(['#{circle[:latlng][0]}', '#{circle[:latlng][1]}'], #{circle[:radius]}, {
color: '#{circle[:color]}',
fillColor: '#{circle[:fillColor]}',
fillOpacity: #{circle[:fillOpacity]}
}).addTo(map);"
      end
    end

    output << "L.tileLayer('#{options[:tile_layer]}', {
attribution: '#{options[:attribution]}',
maxZoom: #{options[:max_zoom]}
}).addTo(map);"
    output << "</script>"
    output.join("\n").html_safe
  end
end