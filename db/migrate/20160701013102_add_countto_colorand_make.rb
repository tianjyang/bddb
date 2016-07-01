class AddCounttoColorandMake < ActiveRecord::Migration
  def change
    add_column :colors, :count, :integer, :default => 0
    add_column :makes, :count, :integer, :default => 0
    add_column :incidents, :count, :integer, :default => 0
  end
end
