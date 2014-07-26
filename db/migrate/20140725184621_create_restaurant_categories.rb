class CreateRestaurantCategories < ActiveRecord::Migration
  def change
    create_table :restaurant_categories do |t|
      t.integer :category_id, :restaurant_id
    end
  end
end
