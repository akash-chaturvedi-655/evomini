# frozen_string_literal: true

require 'application_system_test_case'

class BulletinsTest < ApplicationSystemTestCase
  setup do
    @bulletin = bulletins(:one)
  end

  test 'visiting the index' do
    visit bulletins_url
    assert_selector 'h1', text: 'Bulletins'
  end

  test 'creating a Bulletin' do
    visit bulletins_url
    click_on 'New Bulletin'

    fill_in 'Body', with: @bulletin.body
    fill_in 'Flag', with: @bulletin.flag
    fill_in 'From', with: @bulletin.from
    fill_in 'To', with: @bulletin.to
    click_on 'Create Bulletin'

    assert_text 'Bulletin was successfully created'
    click_on 'Back'
  end

  test 'updating a Bulletin' do
    visit bulletins_url
    click_on 'Edit', match: :first

    fill_in 'Body', with: @bulletin.body
    fill_in 'Flag', with: @bulletin.flag
    fill_in 'From', with: @bulletin.from
    fill_in 'To', with: @bulletin.to
    click_on 'Update Bulletin'

    assert_text 'Bulletin was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Bulletin' do
    visit bulletins_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Bulletin was successfully destroyed'
  end
end
