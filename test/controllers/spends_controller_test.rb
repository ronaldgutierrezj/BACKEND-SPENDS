require "test_helper"

class SpendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spend = spends(:one)
  end

  test "should get index" do
    get spends_url, as: :json
    assert_response :success
  end

  test "should create spend" do
    assert_difference('Spend.count') do
      post spends_url, params: { spend: { amount: @spend.amount, concept: @spend.concept, date: @spend.date, details: @spend.details } }, as: :json
    end

    assert_response 201
  end

  test "should show spend" do
    get spend_url(@spend), as: :json
    assert_response :success
  end

  test "should update spend" do
    patch spend_url(@spend), params: { spend: { amount: @spend.amount, concept: @spend.concept, date: @spend.date, details: @spend.details } }, as: :json
    assert_response 200
  end

  test "should destroy spend" do
    assert_difference('Spend.count', -1) do
      delete spend_url(@spend), as: :json
    end

    assert_response 204
  end
end
