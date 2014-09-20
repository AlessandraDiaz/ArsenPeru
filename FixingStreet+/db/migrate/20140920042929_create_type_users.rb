class CreateTypeUsers < ActiveRecord::Migration
  def change
    create_table :type_users do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
