class SiteDetailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :street_address, :city, :state, :zip_code, :spaces_available, :total_dollar_value_per_sqft, :portfolio_id
end
