class Secondtry < ActiveRecord::Migration
  def change
    add_foreign_key :dbags, :makes, column: :make_id
  end
end
