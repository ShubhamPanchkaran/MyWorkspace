class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
	  t.string   "shopname"
      t.string   "address"
      t.string   "description"
      t.string   "image"
      t.timestamps null: false
    end
  end
end
