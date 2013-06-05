require 'test_helper'

class GenExpsControllerTest < ActionController::TestCase
  setup do
    @gen_exp = gen_exps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gen_exps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gen_exp" do
    assert_difference('GenExp.count') do
      post :create, gen_exp: { amount: @gen_exp.amount, date: @gen_exp.date, method_of_payment: @gen_exp.method_of_payment, purpose: @gen_exp.purpose, seller: @gen_exp.seller }
    end

    assert_redirected_to gen_exp_path(assigns(:gen_exp))
  end

  test "should show gen_exp" do
    get :show, id: @gen_exp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gen_exp
    assert_response :success
  end

  test "should update gen_exp" do
    put :update, id: @gen_exp, gen_exp: { amount: @gen_exp.amount, date: @gen_exp.date, method_of_payment: @gen_exp.method_of_payment, purpose: @gen_exp.purpose, seller: @gen_exp.seller }
    assert_redirected_to gen_exp_path(assigns(:gen_exp))
  end

  test "should destroy gen_exp" do
    assert_difference('GenExp.count', -1) do
      delete :destroy, id: @gen_exp
    end

    assert_redirected_to gen_exps_path
  end
end
