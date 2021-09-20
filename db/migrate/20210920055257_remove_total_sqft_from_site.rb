class RemoveTotalSqftFromSite < ActiveRecord::Migration[6.1]
  def change
    remove_column :sites, :total_sqft, :float
  end
end
