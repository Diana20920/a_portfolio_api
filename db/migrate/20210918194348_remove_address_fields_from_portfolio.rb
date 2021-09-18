class RemoveAddressFieldsFromPortfolio < ActiveRecord::Migration[6.1]
  def change
    remove_column :portfolios, :street_address, :string
    remove_column :portfolios, :city, :string
    remove_column :portfolios, :state, :string
    remove_column :portfolios, :zip_code, :string
  end
end
