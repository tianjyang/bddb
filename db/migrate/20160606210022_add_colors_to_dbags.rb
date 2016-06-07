class AddColorsToDbags < ActiveRecord::Migration
  def change
    add_column :dbags, :color_id, :integer
    add_foreign_key :dbags, :colors
  end
end
