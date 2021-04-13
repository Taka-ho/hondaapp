class AddPostIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :post, foreign_key: true, null: false
  end
end
