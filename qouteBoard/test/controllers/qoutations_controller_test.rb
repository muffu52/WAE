# frozen_string_literal: true

require 'test_helper'

class QoutationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qoutation = qoutations(:one)
  end

  test 'should get index' do
    get qoutations_url
    assert_response :success
  end

  test 'should get new' do
    get new_qoutation_url
    assert_response :success
  end

  test 'should create qoutation' do
    assert_difference('Qoutation.count') do
      post qoutations_url, params: { qoutation: { quote: @qoutation.quote } }
    end

    assert_redirected_to qoutation_url(Qoutation.last)
  end

  test 'should show qoutation' do
    get qoutation_url(@qoutation)
    assert_response :success
  end

  test 'should get edit' do
    get edit_qoutation_url(@qoutation)
    assert_response :success
  end

  test 'should update qoutation' do
    patch qoutation_url(@qoutation), params: { qoutation: { quote: @qoutation.quote } }
    assert_redirected_to qoutation_url(@qoutation)
  end

  test 'should destroy qoutation' do
    assert_difference('Qoutation.count', -1) do
      delete qoutation_url(@qoutation)
    end

    assert_redirected_to qoutations_url
  end
end
