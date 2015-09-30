require 'test_helper'

class RacketsControllerTest < ActionController::TestCase
  setup do
    @racket = rackets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rackets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create racket" do
    assert_difference('Racket.count') do
      post :create, racket: { amount: @racket.amount, entity: @racket.entity }
    end

    assert_redirected_to racket_path(assigns(:racket))
  end

  test "should show racket" do
    get :show, id: @racket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @racket
    assert_response :success
  end

  test "should update racket" do
    patch :update, id: @racket, racket: { amount: @racket.amount, entity: @racket.entity }
    assert_redirected_to racket_path(assigns(:racket))
  end

  test "should destroy racket" do
    assert_difference('Racket.count', -1) do
      delete :destroy, id: @racket
    end

    assert_redirected_to rackets_path
  end
end
