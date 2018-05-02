class AddColumnToSpreeProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :publishable, :boolean, default: true
    add_index :spree_products, :publishable
  end
end
