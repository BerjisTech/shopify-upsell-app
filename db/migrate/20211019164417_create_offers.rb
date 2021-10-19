class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers, id: :uuid do |t|
      t.text :title

      t.timestamps
    end
  end
end
