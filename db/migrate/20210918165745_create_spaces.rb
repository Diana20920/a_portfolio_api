class CreateSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :spaces do |t|
      t.string :category
      t.boolean :vacant
      t.float :sqft
      t.decimal :dollar_per_sqft
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
