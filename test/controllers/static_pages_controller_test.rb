require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  title = 'Ruby on Rails Tutorial Sample App | '

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should have title home" do
  	get static_pages_home_url
  	assert_select 'title', title + 'Home'
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should have title help" do
  	get static_pages_help_url
  	assert_select 'title', title + 'Help'
  end

  test "should get about" do
  	get static_pages_about_url
  	assert_response :success
  end

  test "should have title about" do
  	get static_pages_about_url
  	assert_select 'title', title + 'About Us'
  end

end
