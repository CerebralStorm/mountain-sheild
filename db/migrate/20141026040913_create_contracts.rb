class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :property_id
      t.string :status
      t.datetime :initial_service_date
      t.float :initial_service_charge
      t.float :recurring_service_charge
      t.text :notes
      t.string :customer_print_signature
      t.text :customer_signature
      t.string :sales_rep_print_signature
      t.text :sales_rep_signature
      t.string :service_address
      t.string :service_city
      t.string :service_state
      t.string :service_zip
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_zip

      t.timestamps
    end
  end
end
