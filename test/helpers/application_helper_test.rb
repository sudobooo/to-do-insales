require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         'To Do inSales'
    assert_equal full_title("Help"), 'Help | To Do inSales'
  end
end
