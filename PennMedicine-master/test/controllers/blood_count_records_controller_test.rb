require 'test_helper'

class BloodCountRecordsControllerTest < ActionController::TestCase
  setup do
    @blood_count_record = blood_count_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_count_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_count_record" do
    assert_difference('BloodCountRecord.count') do
      post :create, blood_count_record: { anc: @blood_count_record.anc, date: @blood_count_record.date, day[+/-]: @blood_count_record.day[+/-], hgb[gm/dl]: @blood_count_record.hgb[gm/dl], plt: @blood_count_record.plt, transfusions: @blood_count_record.transfusions, wbc[thousand]: @blood_count_record.wbc[thousand] }
    end

    assert_redirected_to blood_count_record_path(assigns(:blood_count_record))
  end

  test "should show blood_count_record" do
    get :show, id: @blood_count_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood_count_record
    assert_response :success
  end

  test "should update blood_count_record" do
    patch :update, id: @blood_count_record, blood_count_record: { anc: @blood_count_record.anc, date: @blood_count_record.date, day[+/-]: @blood_count_record.day[+/-], hgb[gm/dl]: @blood_count_record.hgb[gm/dl], plt: @blood_count_record.plt, transfusions: @blood_count_record.transfusions, wbc[thousand]: @blood_count_record.wbc[thousand] }
    assert_redirected_to blood_count_record_path(assigns(:blood_count_record))
  end

  test "should destroy blood_count_record" do
    assert_difference('BloodCountRecord.count', -1) do
      delete :destroy, id: @blood_count_record
    end

    assert_redirected_to blood_count_records_path
  end
end
