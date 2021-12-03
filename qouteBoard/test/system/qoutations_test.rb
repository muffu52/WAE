# frozen_string_literal: true

require 'application_system_test_case'

class QoutationsTest < ApplicationSystemTestCase
  setup do
    @qoutation = qoutations(:one)
  end

  test 'visiting the index' do
    visit qoutations_url
    assert_selector 'h1', text: 'Qoutations'
  end

  test 'creating a Qoutation' do
    visit qoutations_url
    click_on 'New Qoutation'

    fill_in 'Quote', with: @qoutation.quote
    click_on 'Create Qoutation'

    assert_text 'Qoutation was successfully created'
    click_on 'Back'
  end

  test 'updating a Qoutation' do
    visit qoutations_url
    click_on 'Edit', match: :first

    fill_in 'Quote', with: @qoutation.quote
    click_on 'Update Qoutation'

    assert_text 'Qoutation was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Qoutation' do
    visit qoutations_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Qoutation was successfully destroyed'
  end
end
