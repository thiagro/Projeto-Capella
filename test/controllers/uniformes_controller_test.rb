require 'test_helper'

class UniformesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uniforme = uniformes(:one)
  end

  test "should get index" do
    get uniformes_url
    assert_response :success
  end

  test "should get new" do
    get new_uniforme_url
    assert_response :success
  end

  test "should create uniforme" do
    assert_difference('Uniforme.count') do
      post uniformes_url, params: { uniforme: { item: @uniforme.item, quantidade: @uniforme.quantidade, tamanho: @uniforme.tamanho, validade: @uniforme.validade } }
    end

    assert_redirected_to uniforme_url(Uniforme.last)
  end

  test "should show uniforme" do
    get uniforme_url(@uniforme)
    assert_response :success
  end

  test "should get edit" do
    get edit_uniforme_url(@uniforme)
    assert_response :success
  end

  test "should update uniforme" do
    patch uniforme_url(@uniforme), params: { uniforme: { item: @uniforme.item, quantidade: @uniforme.quantidade, tamanho: @uniforme.tamanho, validade: @uniforme.validade } }
    assert_redirected_to uniforme_url(@uniforme)
  end

  test "should destroy uniforme" do
    assert_difference('Uniforme.count', -1) do
      delete uniforme_url(@uniforme)
    end

    assert_redirected_to uniformes_url
  end
end
