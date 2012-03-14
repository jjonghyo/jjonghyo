class AddPublisherToProducts < ActiveRecord::Migration
  def change
    add_column :products, :publisher, :string 

  end
end
