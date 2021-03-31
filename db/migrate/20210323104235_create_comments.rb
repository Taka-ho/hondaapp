class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.bigint :user_id, null: false, foreign_key: true
      t.bigint :post_id, null: false, foreign_key: true
      t.bigint :movie_id, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
