json.array!(@bikeparts) do |bikepart|
  json.extract! bikepart, :id, :product_name, :description, :image_url
  json.url bikepart_url(bikepart, format: :json)
end
