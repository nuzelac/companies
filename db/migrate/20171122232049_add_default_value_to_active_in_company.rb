class AddDefaultValueToActiveInCompany < ActiveRecord::Migration[5.1]
  def up
    change_column :companies, :active, :boolean, default: true
  end

  def down
    change_column :companies, :active, :boolean, default: false
  end
end
