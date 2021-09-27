require 'test_helper'

class EpisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epi = epis(:one)
  end

  test "should get index" do
    get epis_url
    assert_response :success
  end

  test "should get new" do
    get new_epi_url
    assert_response :success
  end

  test "should create epi" do
    assert_difference('Epi.count') do
      post epis_url, params: { epi: { item: @epi.item, obs: @epi.obs, quantidade: @epi.quantidade, validade: @epi.validade } }
    end

    assert_redirected_to epi_url(Epi.last)
  end

  test "should show epi" do
    get epi_url(@epi)
    assert_response :success
  end

  test "should get edit" do
    get edit_epi_url(@epi)
    assert_response :success
  end

  test "should update epi" do
    patch epi_url(@epi), params: { epi: { item: @epi.item, obs: @epi.obs, quantidade: @epi.quantidade, validade: @epi.validade } }
    assert_redirected_to epi_url(@epi)
  end

  test "should destroy epi" do
    assert_difference('Epi.count', -1) do
      delete epi_url(@epi)
    end

    assert_redirected_to epis_url
  end
end
