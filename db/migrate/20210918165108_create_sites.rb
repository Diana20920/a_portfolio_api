class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.boolean :spaces_available
      t.decimal :total_dollar_value_per_sqft
      t.float :total_sqft
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
