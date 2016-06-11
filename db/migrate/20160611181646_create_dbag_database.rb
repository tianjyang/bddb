class CreateDbagDatabase < ActiveRecord::Migration
  def change
    create_table :dbags do |t|
      t.string :title, :plate_num
      t.text :summary
      t.integer :make_id, :color_id, :incident_id
      t.timestamps
    end
  end
end
