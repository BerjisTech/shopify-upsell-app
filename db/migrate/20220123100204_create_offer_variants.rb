class CreateOfferVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_variants do |t|
      t.integer :offer_id
      t.string :product
      t.string :variant

      t.timestamps
    end
  end
end
