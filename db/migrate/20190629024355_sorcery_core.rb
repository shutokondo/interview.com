class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # sorcery
      t.string :email,            null: false
      t.string :crypted_password
      t.string :salt

      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana
      t.date :birthday
      t.integer :can_view_count

      t.timestamps                null: false
    end

    add_index :users, :email, unique: true
  end
end
