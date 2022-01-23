# frozen_string_literal: true

require 'test_helper'

class ConditionBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @condition_block = condition_blocks(:one)
  end

  test 'should get index' do
    get condition_blocks_url
    assert_response :success
  end

  test 'should get new' do
    get new_condition_block_url
    assert_response :success
  end

  test 'should create condition_block' do
    assert_difference('ConditionBlock.count') do
      post condition_blocks_url,
           params: { condition_block: { offer_id: @condition_block.offer_id, rule: @condition_block.rule } }
    end

    assert_redirected_to condition_block_url(ConditionBlock.last)
  end

  test 'should show condition_block' do
    get condition_block_url(@condition_block)
    assert_response :success
  end

  test 'should get edit' do
    get edit_condition_block_url(@condition_block)
    assert_response :success
  end

  test 'should update condition_block' do
    patch condition_block_url(@condition_block),
          params: { condition_block: { offer_id: @condition_block.offer_id, rule: @condition_block.rule } }
    assert_redirected_to condition_block_url(@condition_block)
  end

  test 'should destroy condition_block' do
    assert_difference('ConditionBlock.count', -1) do
      delete condition_block_url(@condition_block)
    end

    assert_redirected_to condition_blocks_url
  end
end
