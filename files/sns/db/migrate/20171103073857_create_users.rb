class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login_id
      t.string :name
      t.string :pass
      t.string :icon_file_name

      t.timestamps
    end
  end
end
