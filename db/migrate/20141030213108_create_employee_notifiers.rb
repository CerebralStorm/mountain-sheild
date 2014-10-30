class CreateEmployeeNotifiers < ActiveRecord::Migration
  def change
    create_table :employee_notifiers do |t|
      t.string :email

      t.timestamps
    end
  end
end
