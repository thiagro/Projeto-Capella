require "application_system_test_case"

class EpisTest < ApplicationSystemTestCase
  setup do
    @epi = epis(:one)
  end

  test "visiting the index" do
    visit epis_url
    assert_selector "h1", text: "Epis"
  end

  test "creating a Epi" do
    visit epis_url
    click_on "New Epi"

    fill_in "Item", with: @epi.item
    fill_in "Obs", with: @epi.obs
    fill_in "Quantidade", with: @epi.quantidade
    fill_in "Validade", with: @epi.validade
    click_on "Create Epi"

    assert_text "Epi was successfully created"
    click_on "Back"
  end

  test "updating a Epi" do
    visit epis_url
    click_on "Edit", match: :first

    fill_in "Item", with: @epi.item
    fill_in "Obs", with: @epi.obs
    fill_in "Quantidade", with: @epi.quantidade
    fill_in "Validade", with: @epi.validade
    click_on "Update Epi"

    assert_text "Epi was successfully updated"
    click_on "Back"
  end

  test "destroying a Epi" do
    visit epis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Epi was successfully destroyed"
  end
end
