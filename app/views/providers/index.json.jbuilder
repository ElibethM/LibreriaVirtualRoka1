json.array!(@providers) do |provider|
  json.extract! provider, :id, :nombre, :telefono, :email, :direccion, :tipoLibro
  json.url provider_url(provider, format: :json)
end
