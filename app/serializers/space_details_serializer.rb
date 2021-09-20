class SpaceDetailsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :vacant, :square_footage, :dollar_per_sqft, :site_id
end
