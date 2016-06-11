class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :name, :descrip
    end
  end
end
