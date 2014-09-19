class CreateTypeIncidences < ActiveRecord::Migration
  def change
    create_table :type_incidences do |t|
      t.string :name

      t.timestamps
    end
  end
end
