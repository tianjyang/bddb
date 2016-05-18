class AddDbFields < ActiveRecord::Migration
  def change
    add_column(:dbags, :title, :string)
    add_column(:dbags, :summary, :text)
  end
end
