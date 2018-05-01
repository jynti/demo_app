class AddColumnToSpreeProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :spree_products, :publishable, :boolean
  end
end
