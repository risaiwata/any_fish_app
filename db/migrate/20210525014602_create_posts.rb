class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :post_title, null: false
      t.date   :result_date, null: false
      t.string :fish, null: false
      t.string :size
      t.string :weight
      t.string :count
      t.integer :prefecture
      t.string :lure
      t.string :reel
      t.string :rod
      t.string :weather
      t.text :result_text
      t.references :angler, foreign_key:true
      
      t.timestamps
    end
  end
end
