class SiteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :portfolio_id
end
