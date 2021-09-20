class PortfolioDetailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :region, :entity_id
end
