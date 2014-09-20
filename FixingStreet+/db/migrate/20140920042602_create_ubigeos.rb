class CreateUbigeos < ActiveRecord::Migration
  def change
    create_table :ubigeos do |t|
      t.string :name
      t.integer :level
      t.string :code
      t.boolean :status

      t.timestamps
    end
  end
end
