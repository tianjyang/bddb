class AddPlateNum < ActiveRecord::Migration
  def change
    add_column(:dbags, :plate_num, :string)
  end
end
