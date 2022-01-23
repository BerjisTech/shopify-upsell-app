class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.integer :shop_id

      t.timestamps
    end
  end
end
