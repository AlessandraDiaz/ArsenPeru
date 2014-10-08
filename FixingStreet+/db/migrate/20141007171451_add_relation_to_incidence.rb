class AddRelationToIncidence < ActiveRecord::Migration
  def change
    add_column :incidences, :ubigeo_id, :integer
    add_column :incidences, :type_id, :integer
    add_column :incidences, :motive_id, :integer
  end
end
