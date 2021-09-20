class SpaceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :site_id
end
