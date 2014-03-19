class CreateDelegations < ActiveRecord::Migration
  def change
    create_table :delegations do |t|
      t.string :city
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
