require 'test_helper'

class VehicleExpensesControllerTest < ActionController::TestCase
  setup do
    @vehicle_expense = vehicle_expenses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicle_expenses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle_expense" do
    assert_difference('VehicleExpense.count') do
      post :create, vehicle_expense: { amount: @vehicle_expense.amount, date: @vehicle_expense.date, details: @vehicle_expense.details, method_of_payment: @vehicle_expense.method_of_payment, purpose: @vehicle_expense.purpose, seller: @vehicle_expense.seller }
    end

    assert_redirected_to vehicle_expense_path(assigns(:vehicle_expense))
  end

  test "should show vehicle_expense" do
    get :show, id: @vehicle_expense
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle_expense
    assert_response :success
  end

  test "should update vehicle_expense" do
    put :update, id: @vehicle_expense, vehicle_expense: { amount: @vehicle_expense.amount, date: @vehicle_expense.date, details: @vehicle_expense.details, method_of_payment: @vehicle_expense.method_of_payment, purpose: @vehicle_expense.purpose, seller: @vehicle_expense.seller }
    assert_redirected_to vehicle_expense_path(assigns(:vehicle_expense))
  end

  test "should destroy vehicle_expense" do
    assert_difference('VehicleExpense.count', -1) do
      delete :destroy, id: @vehicle_expense
    end

    assert_redirected_to vehicle_expenses_path
  end
end
