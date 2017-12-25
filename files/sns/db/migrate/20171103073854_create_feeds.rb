class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
      t.string :feed_type
      t.integer :user_id
      t.string :image_file_name
      t.string :exif, :limit => 1000
      t.string :comment

      t.timestamps
    end
  end
end
