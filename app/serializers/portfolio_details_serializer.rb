class PortfolioDetailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :region, :total_sqft, :entity_id
end
