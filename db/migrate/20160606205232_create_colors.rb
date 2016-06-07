class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name

      t.timestamps null: true
    end
  end
end
