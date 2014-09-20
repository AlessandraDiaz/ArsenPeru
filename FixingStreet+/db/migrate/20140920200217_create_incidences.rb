class CreateIncidences < ActiveRecord::Migration
  def change
    create_table :incidences do |t|
      t.integer :ticket
      t.string :picture
      t.text :description
      t.text :reference
      t.datetime :date
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps
    end
  end
end
