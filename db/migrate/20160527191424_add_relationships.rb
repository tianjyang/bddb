class AddRelationships < ActiveRecord::Migration
  def change
    add_foreign_key :dbags, :makes
    
  end
end
