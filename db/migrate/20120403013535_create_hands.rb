class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.string :name
      t.string :photo_id

      t.timestamps
    end
  end
end
