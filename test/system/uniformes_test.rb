require "application_system_test_case"

class UniformesTest < ApplicationSystemTestCase
  setup do
    @uniforme = uniformes(:one)
  end

  test "visiting the index" do
    visit uniformes_url
    assert_selector "h1", text: "Uniformes"
  end

  test "creating a Uniforme" do
    visit uniformes_url
    click_on "New Uniforme"

    fill_in "Item", with: @uniforme.item
    fill_in "Quantidade", with: @uniforme.quantidade
    fill_in "Tamanho", with: @uniforme.tamanho
    fill_in "Validade", with: @uniforme.validade
    click_on "Create Uniforme"

    assert_text "Uniforme was successfully created"
    click_on "Back"
  end

  test "updating a Uniforme" do
    visit uniformes_url
    click_on "Edit", match: :first

    fill_in "Item", with: @uniforme.item
    fill_in "Quantidade", with: @uniforme.quantidade
    fill_in "Tamanho", with: @uniforme.tamanho
    fill_in "Validade", with: @uniforme.validade
    click_on "Update Uniforme"

    assert_text "Uniforme was successfully updated"
    click_on "Back"
  end

  test "destroying a Uniforme" do
    visit uniformes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uniforme was successfully destroyed"
  end
end
