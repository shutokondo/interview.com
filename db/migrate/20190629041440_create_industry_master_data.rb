class CreateIndustryMasterData < ActiveRecord::Migration[5.2]
  def change
    create_table :industry_master_data do |t|
      t.string :name, null: false
    end
  end
end
