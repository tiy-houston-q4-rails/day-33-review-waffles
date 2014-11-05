class CreateWaffles < ActiveRecord::Migration
  def change
    create_table :waffles do |t|
      t.string :photo

      t.timestamps
    end
  end
end
