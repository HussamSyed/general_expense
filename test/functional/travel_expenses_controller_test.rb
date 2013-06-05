require 'test_helper'

class TravelExpensesControllerTest < ActionController::TestCase
  setup do
    @travel_expense = travel_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travel_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create travel_expense" do
    assert_difference('TravelExpense.count') do
      post :create, travel_expense: { amount: @travel_expense.amount, date: @travel_expense.date, details: @travel_expense.details, method_of_payment: @travel_expense.method_of_payment, purpose: @travel_expense.purpose, seller: @travel_expense.seller }
    end

    assert_redirected_to travel_expense_path(assigns(:travel_expense))
  end

  test "should show travel_expense" do
    get :show, id: @travel_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @travel_expense
    assert_response :success
  end

  test "should update travel_expense" do
    put :update, id: @travel_expense, travel_expense: { amount: @travel_expense.amount, date: @travel_expense.date, details: @travel_expense.details, method_of_payment: @travel_expense.method_of_payment, purpose: @travel_expense.purpose, seller: @travel_expense.seller }
    assert_redirected_to travel_expense_path(assigns(:travel_expense))
  end

  test "should destroy travel_expense" do
    assert_difference('TravelExpense.count', -1) do
      delete :destroy, id: @travel_expense
    end

    assert_redirected_to travel_expenses_path
  end
end
