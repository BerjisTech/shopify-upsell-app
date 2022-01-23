# frozen_string_literal: true

class AddHasTrialToShops < ActiveRecord::Migration[6.1]
  def change
    add_column :shops, :has_trial, :integer
    add_column :shops, :shopify_id, :bigint
    add_column :shops, :email, :string
    add_column :shops, :timezone, :string
    add_column :shops, :iana_timezone, :string
    add_column :shops, :installed_at, :datetime
    add_column :shops, :activated_at, :datetime
    add_column :shops, :frozen_at, :datetime
    add_column :shops, :uninstalled_at, :datetime
    add_column :shops, :bill_type, :text, default: 'RECURRING'
    add_column :shops, :plan_name, :text
    add_column :shops, :plan_price, :text
    add_column :shops, :bill_interval, :text
    add_column :shops, :capped_amount, :text
    add_column :shops, :terms, :text
    add_column :shops, :trial_days, :integer
    add_column :shops, :test, :text
    add_column :shops, :on_install, :text
    add_column :shops, :uninstalled_on, :text
    add_column :shops, :shop_owner, :text
    add_column :shops, :plan_display_name, :text
    add_column :shops, :customer_email, :text
    add_column :shops, :domain, :text
    add_column :shops, :partner, :text
    add_column :shops, :language, :text
  end
end
