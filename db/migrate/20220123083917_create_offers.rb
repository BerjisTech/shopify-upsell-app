class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.integer :shop_id
      t.datetime :date
      t.string :title
      t.string :scheme
      t.string :stop_show
      t.string :layout
      t.string :required_checkout
      t.string :has_discount
      t.string :discount_code
      t.string :general_block_rule
      t.string :to_checkout
      t.string :auto_add
      t.string :status
      t.string :text
      t.string :atc
      t.string :close

      t.timestamps
    end
  end
end
