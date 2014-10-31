class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :alternate_phone, :string
    add_column :users, :phone, :string
    add_column :users, :role, :string
    add_column :users, :agree_to_terms, :boolean
  end
end
