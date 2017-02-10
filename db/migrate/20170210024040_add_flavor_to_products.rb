class AddFlavorToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :flavor, :string
  end
end
