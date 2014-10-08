class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
