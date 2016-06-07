class AddIncidentsToDbags < ActiveRecord::Migration
  def change
        add_column :dbags, :incident_id, :integer
    add_foreign_key :dbags, :incident
  end
end
