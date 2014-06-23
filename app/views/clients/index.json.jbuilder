json.array!(@clients) do |client|
  json.extract! client, :id, :rfc, :nombre, :telefono, :email, :direccion, :facebook, :linkedIn
  json.url client_url(client, format: :json)
end
