class ChangeForeignKeyInReviews < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_ke :reviews, :restaurant
    add_foreign_key :reviews, :restaurant, on_delete: :cascade
  end
end
