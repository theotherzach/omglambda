require 'test_helper'

class MailedaddressesControllerTest < ActionController::TestCase
  setup do
    @mailedaddress = mailedaddresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailedaddresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailedaddress" do
    assert_difference('Mailedaddress.count') do
      post :create, mailedaddress: { branch: @mailedaddress.branch, deliverypoint: @mailedaddress.deliverypoint, drop: @mailedaddress.drop, piecepostage: @mailedaddress.piecepostage, ranktotal: @mailedaddress.ranktotal, zipcode: @mailedaddress.zipcode, zipplus4: @mailedaddress.zipplus4 }
    end

    assert_redirected_to mailedaddress_path(assigns(:mailedaddress))
  end

  test "should show mailedaddress" do
    get :show, id: @mailedaddress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailedaddress
    assert_response :success
  end

  test "should update mailedaddress" do
    put :update, id: @mailedaddress, mailedaddress: { branch: @mailedaddress.branch, deliverypoint: @mailedaddress.deliverypoint, drop: @mailedaddress.drop, piecepostage: @mailedaddress.piecepostage, ranktotal: @mailedaddress.ranktotal, zipcode: @mailedaddress.zipcode, zipplus4: @mailedaddress.zipplus4 }
    assert_redirected_to mailedaddress_path(assigns(:mailedaddress))
  end

  test "should destroy mailedaddress" do
    assert_difference('Mailedaddress.count', -1) do
      delete :destroy, id: @mailedaddress
    end

    assert_redirected_to mailedaddresses_path
  end
end
