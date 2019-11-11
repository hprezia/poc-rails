class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :federalId
      t.string :name
      t.string :address
      t.decimal :limit
      t.string :rate

      t.timestamps
    end
  end
end
