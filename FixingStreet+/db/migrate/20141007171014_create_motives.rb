class CreateMotives < ActiveRecord::Migration
  def change
    create_table :motives do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
