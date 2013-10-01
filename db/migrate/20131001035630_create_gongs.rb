class CreateGongs < ActiveRecord::Migration
  def change
    create_table :gongs do |t|
      t.string :name
      t.integer :threshhold

      t.timestamps
    end
  end
end
