class CreatePortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :portfolios do |t|
      t.string :region
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.float :total_sqft
      t.references :entity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
