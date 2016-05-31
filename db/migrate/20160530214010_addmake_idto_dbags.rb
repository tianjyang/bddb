class AddmakeIdtoDbags < ActiveRecord::Migration
  def change
    add_column :dbags, :make_id, :integer
  end
end
