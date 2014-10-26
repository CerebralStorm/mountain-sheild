class CreateQuoteRequests < ActiveRecord::Migration
  def change
    create_table :quote_requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end
