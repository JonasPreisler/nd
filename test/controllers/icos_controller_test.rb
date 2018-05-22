require 'test_helper'

class IcosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ico = icos(:one)
  end

  test "should get index" do
    get icos_url
    assert_response :success
  end

  test "should get new" do
    get new_ico_url
    assert_response :success
  end

  test "should create ico" do
    assert_difference('Ico.count') do
      post icos_url, params: { ico: { country: @ico.country, description: @ico.description, goal: @ico.goal, launch: @ico.launch, name: @ico.name, price: @ico.price, website: @ico.website } }
    end

    assert_redirected_to ico_url(Ico.last)
  end

  test "should show ico" do
    get ico_url(@ico)
    assert_response :success
  end

  test "should get edit" do
    get edit_ico_url(@ico)
    assert_response :success
  end

  test "should update ico" do
    patch ico_url(@ico), params: { ico: { country: @ico.country, description: @ico.description, goal: @ico.goal, launch: @ico.launch, name: @ico.name, price: @ico.price, website: @ico.website } }
    assert_redirected_to ico_url(@ico)
  end

  test "should destroy ico" do
    assert_difference('Ico.count', -1) do
      delete ico_url(@ico)
    end

    assert_redirected_to icos_url
  end
end
