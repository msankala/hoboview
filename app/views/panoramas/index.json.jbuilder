json.array!(@panoramas) do |panorama|
  json.extract! panorama, :id, :title, :center, :heading, :copyright, :description, :image
  json.url panorama_url(panorama, format: :json)
end
