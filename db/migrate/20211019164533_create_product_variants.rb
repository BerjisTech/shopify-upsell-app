class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants, id: :uuid do |t|
      t.integer :product_id
      t.integer :variant_id
      t.text :name

      t.timestamps
    end
  end
end
