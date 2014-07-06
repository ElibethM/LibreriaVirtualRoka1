json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :client_id, :employee_id, :fecha, , :acuerdo
  json.url promotion_url(promotion, format: :json)
end
