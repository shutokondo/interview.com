class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string     :name, null: false
      t.text       :address
      t.text       :image
      t.text       :site_url
      t.references :industry, foreign_key: { to_table: :industry_master_data }

      t.timestamps null: false
    end
  end
end
