class SpaceDetailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :vacant, :sqft, :dollar_per_sqft, :site_id
end
