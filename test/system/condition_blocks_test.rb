# frozen_string_literal: true

require 'application_system_test_case'

class ConditionBlocksTest < ApplicationSystemTestCase
  setup do
    @condition_block = condition_blocks(:one)
  end

  test 'visiting the index' do
    visit condition_blocks_url
    assert_selector 'h1', text: 'Condition Blocks'
  end

  test 'creating a Condition block' do
    visit condition_blocks_url
    click_on 'New Condition Block'

    fill_in 'Offer', with: @condition_block.offer_id
    fill_in 'Rule', with: @condition_block.rule
    click_on 'Create Condition block'

    assert_text 'Condition block was successfully created'
    click_on 'Back'
  end

  test 'updating a Condition block' do
    visit condition_blocks_url
    click_on 'Edit', match: :first

    fill_in 'Offer', with: @condition_block.offer_id
    fill_in 'Rule', with: @condition_block.rule
    click_on 'Update Condition block'

    assert_text 'Condition block was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Condition block' do
    visit condition_blocks_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Condition block was successfully destroyed'
  end
end
