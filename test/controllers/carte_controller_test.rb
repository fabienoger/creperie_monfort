require 'test_helper'

class CarteControllerTest < ActionController::TestCase
  test "should get galettes_sarrasin" do
    get :galettes_sarrasin
    assert_response :success
  end

  test "should get crepes_froment" do
    get :crepes_froment
    assert_response :success
  end

  test "should get omelettes_salades" do
    get :omelettes_salades
    assert_response :success
  end

  test "should get crepes_sucre" do
    get :crepes_sucre
    assert_response :success
  end

  test "should get desserts" do
    get :desserts
    assert_response :success
  end

  test "should get boissons" do
    get :boissons
    assert_response :success
  end

end
