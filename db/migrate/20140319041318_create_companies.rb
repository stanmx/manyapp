class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :category_id
      t.integer :delegation_id
      t.string :name
      t.text :about

      t.timestamps
    end
  end
end
