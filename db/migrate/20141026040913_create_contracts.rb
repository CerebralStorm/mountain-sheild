class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :property_id
      t.string :status
      t.datetime :initial_service_date
      t.float :initial_service_charge

      t.timestamps
    end
  end
end
