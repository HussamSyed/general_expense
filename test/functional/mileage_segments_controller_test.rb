require 'test_helper'

class MileageSegmentsControllerTest < ActionController::TestCase
  setup do
    @mileage_segment = mileage_segments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mileage_segments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mileage_segment" do
    assert_difference('MileageSegment.count') do
      post :create, mileage_segment: { date: @mileage_segment.date, destination: @mileage_segment.destination, miles_driven: @mileage_segment.miles_driven, purpose: @mileage_segment.purpose, vehicle: @mileage_segment.vehicle }
    end

    assert_redirected_to mileage_segment_path(assigns(:mileage_segment))
  end

  test "should show mileage_segment" do
    get :show, id: @mileage_segment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mileage_segment
    assert_response :success
  end

  test "should update mileage_segment" do
    put :update, id: @mileage_segment, mileage_segment: { date: @mileage_segment.date, destination: @mileage_segment.destination, miles_driven: @mileage_segment.miles_driven, purpose: @mileage_segment.purpose, vehicle: @mileage_segment.vehicle }
    assert_redirected_to mileage_segment_path(assigns(:mileage_segment))
  end

  test "should destroy mileage_segment" do
    assert_difference('MileageSegment.count', -1) do
      delete :destroy, id: @mileage_segment
    end

    assert_redirected_to mileage_segments_path
  end
end
