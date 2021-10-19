class AddPriorityToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :priority, :integer
  end
end
