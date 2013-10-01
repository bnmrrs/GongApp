class AddSlugToGong < ActiveRecord::Migration
  def change
    add_column :gongs, :slug, :string
    add_index :gongs, :slug, unique: true
  end
end
