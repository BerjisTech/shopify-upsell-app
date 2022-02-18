# frozen_string_literal: true

class CreateHelps < ActiveRecord::Migration[6.1]
  def change
    create_table :helps, &:timestamps
  end
end
