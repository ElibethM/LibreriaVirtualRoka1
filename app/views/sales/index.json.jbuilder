json.array!(@sales) do |sale|
  json.extract! sale, :id, :client_id, :fechaVenta
  json.url sale_url(sale, format: :json)
end
