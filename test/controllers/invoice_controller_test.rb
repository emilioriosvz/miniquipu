require 'test_helper'

class InvoiceControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
