class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id,           null: false
      t.string  :title,             null: false
      t.text    :text,              null: false
      t.string  :address,           null: false
      t.float   :latitude
      t.float   :longitude
      t.float   :rate, default: 0,  null: false

      t.timestamps
    end
  end
end
