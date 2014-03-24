class CreateCompaniesServices < ActiveRecord::Migration
  def up
  create_table :companies_services, :id => false do |t|
      t.integer :company_id, :null => false
      t.integer :service_id, :null => false
    end

    # Add table index
    add_index :companies_services, [:company_id, :service_id], :unique => true

  end

  def down
    remove_index :company_services, :column => [:company_id, :service_id]
    drop_table :companies_services
  end
end
