class RenameSpaceSquareFootageToSqft < ActiveRecord::Migration[6.1]
  def change
    rename_column :spaces, :sqft, :sqft
  end
end
