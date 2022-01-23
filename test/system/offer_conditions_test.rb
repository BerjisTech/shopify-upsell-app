# frozen_string_literal: true

require 'application_system_test_case'

class OfferConditionsTest < ApplicationSystemTestCase
  setup do
    @offer_condition = offer_conditions(:one)
  end

  test 'visiting the index' do
    visit offer_conditions_url
    assert_selector 'h1', text: 'Offer Conditions'
  end

  test 'creating a Offer condition' do
    visit offer_conditions_url
    click_on 'New Offer Condition'

    fill_in 'Amount', with: @offer_condition.amount
    fill_in 'Block', with: @offer_condition.block_id
    fill_in 'Condition', with: @offer_condition.condition_id
    fill_in 'Content', with: @offer_condition.content
    fill_in 'Country', with: @offer_condition.country
    fill_in 'Level', with: @offer_condition.level
    fill_in 'Offer', with: @offer_condition.offer_id
    fill_in 'Product', with: @offer_condition.product_id
    fill_in 'Quantity', with: @offer_condition.quantity
    fill_in 'Variant', with: @offer_condition.variant_id
    click_on 'Create Offer condition'

    assert_text 'Offer condition was successfully created'
    click_on 'Back'
  end

  test 'updating a Offer condition' do
    visit offer_conditions_url
    click_on 'Edit', match: :first

    fill_in 'Amount', with: @offer_condition.amount
    fill_in 'Block', with: @offer_condition.block_id
    fill_in 'Condition', with: @offer_condition.condition_id
    fill_in 'Content', with: @offer_condition.content
    fill_in 'Country', with: @offer_condition.country
    fill_in 'Level', with: @offer_condition.level
    fill_in 'Offer', with: @offer_condition.offer_id
    fill_in 'Product', with: @offer_condition.product_id
    fill_in 'Quantity', with: @offer_condition.quantity
    fill_in 'Variant', with: @offer_condition.variant_id
    click_on 'Update Offer condition'

    assert_text 'Offer condition was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Offer condition' do
    visit offer_conditions_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Offer condition was successfully destroyed'
  end
end
