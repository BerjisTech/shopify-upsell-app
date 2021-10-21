# frozen_string_literal: true

class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats, id: :uuid do |t|
      t.integer :shop
      t.uuid :offer_id

      t.timestamps
    end
  end
end
