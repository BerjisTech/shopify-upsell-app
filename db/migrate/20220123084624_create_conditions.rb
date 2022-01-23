# frozen_string_literal: true

class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
