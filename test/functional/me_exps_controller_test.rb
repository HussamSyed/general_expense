require 'test_helper'

class MeExpsControllerTest < ActionController::TestCase
  setup do
    @me_exp = me_exps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:me_exps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create me_exp" do
    assert_difference('MeExp.count') do
      post :create, me_exp: { amount: @me_exp.amount, date: @me_exp.date, details: @me_exp.details, no_of_people: @me_exp.no_of_people, venue: @me_exp.venue }
    end

    assert_redirected_to me_exp_path(assigns(:me_exp))
  end

  test "should show me_exp" do
    get :show, id: @me_exp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @me_exp
    assert_response :success
  end

  test "should update me_exp" do
    put :update, id: @me_exp, me_exp: { amount: @me_exp.amount, date: @me_exp.date, details: @me_exp.details, no_of_people: @me_exp.no_of_people, venue: @me_exp.venue }
    assert_redirected_to me_exp_path(assigns(:me_exp))
  end

  test "should destroy me_exp" do
    assert_difference('MeExp.count', -1) do
      delete :destroy, id: @me_exp
    end

    assert_redirected_to me_exps_path
  end
end
