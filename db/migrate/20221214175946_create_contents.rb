class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.string :url
      t.string :image_file_name
      t.string :user_mongo_id

      t.references :user, foreign_key: true, index: true, null: true
    end
  end
end
