class AddAddressFieldsToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :street_address, :string
    add_column :sites, :city, :string
    add_column :sites, :state, :string
    add_column :sites, :zip_code, :string
  end
end
