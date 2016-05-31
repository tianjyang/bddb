class AddRelationships < ActiveRecord::Migration
  def change
    remove_column :dbags, :make
    add_foreign_key :dbags, :makes
    
  end
end
