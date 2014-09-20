class CreateConditionIncidences < ActiveRecord::Migration
  def change
    create_table :condition_incidences do |t|
      t.string :name
      t.boolean :status

      t.timestamps
    end
  end
end
