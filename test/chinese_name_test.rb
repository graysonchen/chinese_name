require 'test_helper'
LAST_NAME_FILE = File.dirname(__FILE__) + '/last_name_test.dat'

class ChineseNameTest < Minitest::Test
  def test_g_last_name
    ENV["LAST_NAME_FILE"] = LAST_NAME_FILE
    assert_equal '陈', ChineseName.g.last_name
  end

  def test_g_all_last_name_count
    ENV["LAST_NAME_FILE"] = nil
    assert_equal 434, ChineseName.g.send('all_last_name').count
  end
end
