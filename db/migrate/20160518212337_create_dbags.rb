class CreateDbags < ActiveRecord::Migration
  def change
    create_table :dbags do |t|
      t.string :title
      t.text :summary
      t.timestamps null: false
    end
  end
end
