class RemoveTotalSqftFromPortfolio < ActiveRecord::Migration[6.1]
  def change
    remove_column :portfolios, :total_sqft, :float
  end
end
