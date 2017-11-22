class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :comment
      t.boolean :active
      t.datetime :deleted

      t.timestamps
    end
  end
end
