class AddMakeToDbags < ActiveRecord::Migration
  def change
    add_column(:dbags, :make, :string)
  end
end
