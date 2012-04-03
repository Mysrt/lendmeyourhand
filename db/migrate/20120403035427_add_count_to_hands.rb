class AddCountToHands < ActiveRecord::Migration
  def change
    add_column :hands, :count, :integer

  end
end
