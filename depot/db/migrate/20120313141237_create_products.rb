class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
	  t.string :publisher, :default => pub1
      t.string :author
      t.text :description
      t.string :image_url
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
