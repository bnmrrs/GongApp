class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :gong_id
      t.string :session_id

      t.timestamps
    end
  end
end
